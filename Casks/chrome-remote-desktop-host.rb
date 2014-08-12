class ChromeRemoteDesktopHost < Cask
  version 'latest'
  sha256 :no_check

  url 'https://dl.google.com/chrome-remote-desktop/chromeremotedesktop.dmg'
  homepage 'https://chrome.google.com/remotedesktop'

  install 'Chrome Remote Desktop Host.pkg'
  uninstall :script => {
    :executable => '/Applications/Chrome Remote Desktop Host Uninstaller.app/Contents/MacOS/remoting_host_uninstaller',
    :args => %w[--no-ui]
  },
            :pkgutil => 'com.google.pkg.ChromeRemoteDesktopHost'
  caveats do
    logout
  end
end
