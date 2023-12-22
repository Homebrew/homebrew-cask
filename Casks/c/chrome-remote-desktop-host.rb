cask "chrome-remote-desktop-host" do
  version "121.0.6167.9"
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

  uninstall script:    {
              executable: "/Applications/Chrome Remote Desktop Host Uninstaller.app/Contents/MacOS/remoting_host_uninstaller",
              args:       ["--no-ui"],
              sudo:       true,
            },
            launchctl: [
              "com.google.GoogleUpdater.wake.system",
              "org.chromium.chromoting",
            ],
            pkgutil:   [
              "com.google.pkg.ChromeRemoteDesktopHost",
              "com.google.pkg.ChromeRemoteDesktopHostService",
              "com.google.pkg.ChromeRemoteDesktopHostUninstaller",
            ]

  zap trash: "~/Library/Saved Application State/com.google.chromeremotedesktop.me2me-host-uninstaller.savedState/"

  caveats do
    logout
  end
end
