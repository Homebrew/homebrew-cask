cask 'silverlight' do
  version '5.1.41212.0'
  sha256 :no_check # required as upstream package is updated in-place

  url 'https://download.microsoft.com/download/5/3/D/53D3880B-25F8-4714-A4AC-E463A492F96E/41212.00/Silverlight.dmg'
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
