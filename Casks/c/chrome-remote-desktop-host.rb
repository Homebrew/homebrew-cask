cask "chrome-remote-desktop-host" do
  version "142.0.7444.18"
  sha256 :no_check

  url "https://dl.google.com/chrome-remote-desktop/chromeremotedesktop.dmg"
  name "Chrome Remote Desktop"
  desc "Remotely access another computer through the Google Chrome browser"
  homepage "https://chrome.google.com/webstore/detail/chrome-remote-desktop/inomeogfingihgjfjlpeplalcfajhgai"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Chrome Remote Desktop Host.pkg"

  # Some launchctl and pkgutil items are shared with other Google apps, they should only be removed in the zap stanza
  # See: https://github.com/Homebrew/homebrew-cask/pull/92704#issuecomment-727163169
  # launchctl: com.google.GoogleUpdater.wake.system, com.google.keystone.daemon,
  #            com.google.keystone.system.agent, com.google.keystone.system.xpcservice

  # pkgutil: com.google.pkg.Keystone
  uninstall launchctl: "org.chromium.chromoting",
            script:    {
              executable: "/Applications/Chrome Remote Desktop Host Uninstaller.app/Contents/MacOS/remoting_host_uninstaller",
              args:       ["--no-ui"],
              sudo:       true,
            },
            pkgutil:   [
              "com.google.pkg.ChromeRemoteDesktopHost",
              "com.google.pkg.ChromeRemoteDesktopHostService",
              "com.google.pkg.ChromeRemoteDesktopHostUninstaller",
            ]

  zap trash: "~/Library/Saved Application State/com.google.chromeremotedesktop.me2me-host-uninstaller.savedState"

  caveats do
    logout
  end
end
