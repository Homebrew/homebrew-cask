cask 'qobuz-desktop' do
  version :latest
  sha256 :no_check

  url 'http://www.qobuz.com/apps/qobuz-desktop/osx/QobuzDesktopInstaller.pkg'
  name 'Qobuz Desktop'
  homepage 'http://www.qobuz.com/de-de/applications#app-desktop'
  license :unknown

  pkg 'QobuzDesktopInstaller.pkg'

  uninstall pkgutil: 'com.qobuz.QobuzDesktop.*',
            delete:  '/Applications/Qobuz Desktop.app'
end
