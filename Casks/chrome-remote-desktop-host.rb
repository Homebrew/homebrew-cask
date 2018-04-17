cask 'chrome-remote-desktop-host' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/chrome-remote-desktop/chromeremotedesktop.dmg'
  name 'Chrome Remote Desktop'
  homepage 'https://chrome.google.com/webstore/detail/chrome-remote-desktop/gbchcmhmhahfdphkhkmpfmihenigjmpp'

  pkg 'Chrome Remote Desktop Host.pkg'

  uninstall script:  {
                       executable: '/Applications/Chrome Remote Desktop Host Uninstaller.app/Contents/MacOS/remoting_host_uninstaller',
                       args:       ['--no-ui'],
                     },
            pkgutil: 'com.google.pkg.ChromeRemoteDesktopHost'

  caveats do
    logout
  end
end
