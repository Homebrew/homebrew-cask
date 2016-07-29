cask 'silverlight' do
  version '5.1.50428.0'
  sha256 :no_check # required as upstream package is updated in-place

  url 'https://download.microsoft.com/download/1/F/6/1F637DB3-8EF9-4D96-A8F1-909DFD7C5E69/50428.00/Silverlight.dmg'
  name 'Silverlight'
  homepage 'https://www.microsoft.com/silverlight/'
  license :gratis

  pkg 'silverlight.pkg'

  uninstall pkgutil: 'com.microsoft.SilverlightInstaller'

  zap       delete: [
                      '~/Library/Application Support/Microsoft/Silverlight',
                      '~/Library/Preferences/com.microsoft.silverlight.plist',
                      '~/Library/Saved Application State/com.microsoft.silverlight.savedState',
                    ],
            rmdir:  '~/Library/Application Support/Microsoft/'
end
