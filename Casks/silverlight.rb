cask 'silverlight' do
  version '5.1.50901.0'
  sha256 :no_check # required as upstream package is updated in-place

  url 'https://download.microsoft.com/download/0/3/E/03EB1393-4F4E-4191-8364-C641FAB20344/50901.00/Silverlight.dmg'
  name 'Silverlight'
  homepage 'https://www.microsoft.com/silverlight/'

  pkg 'silverlight.pkg'

  uninstall pkgutil: 'com.microsoft.silverlight.plugin',
            delete:  '/Library/Internet Plug-Ins/Silverlight.plugin'

  zap delete: [
                '~/Library/Application Support/Microsoft/Silverlight',
                '~/Library/Preferences/com.microsoft.silverlight.plist',
                '~/Library/Saved Application State/com.microsoft.silverlight.savedState',
              ],
      rmdir:  '~/Library/Application Support/Microsoft/'
end
