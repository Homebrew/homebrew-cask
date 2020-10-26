cask "chrome-remote-desktop-host" do
  version :latest
  sha256 :no_check

  url "https://dl.google.com/chrome-remote-desktop/chromeremotedesktop.dmg"
  name "Chrome Remote Desktop"
  desc "Remotely access another computer through the Chrome browser"
  homepage "https://chrome.google.com/webstore/detail/chrome-remote-desktop/inomeogfingihgjfjlpeplalcfajhgai"

  pkg "Chrome Remote Desktop Host.pkg"

  uninstall script:    {
    executable: "/Applications/Chrome Remote Desktop Host Uninstaller.app/Contents/MacOS/remoting_host_uninstaller",
    args:       ["--no-ui"],
    sudo:       true,
  },
            launchctl: [
              "com.google.keystone.daemon",
              "com.google.keystone.system.xpcservice",
              "org.chromium.chromoting",
            ],
            pkgutil:   [
              "com.google.pkg.ChromeRemoteDesktopHost",
              "com.google.pkg.ChromeRemoteDesktopHostService",
              "com.google.pkg.ChromeRemoteDesktopHostUninstaller",
              "com.google.pkg.Keystone",
            ]

  caveats do
    logout
  end
end
