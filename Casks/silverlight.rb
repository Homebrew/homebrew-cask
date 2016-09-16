cask 'silverlight' do
  version '5.1.50709.0'
  sha256 :no_check # required as upstream package is updated in-place

  url 'https://download.microsoft.com/download/7/7/6/7765A6A5-4B02-41DE-B7AF-067C92C581BD/50709.00/Silverlight.dmg'
  name 'Silverlight'
  homepage 'https://www.microsoft.com/silverlight/'
  license :gratis

  pkg 'silverlight.pkg'

  uninstall pkgutil: 'com.microsoft.silverlight.plugin',
            delete:  '/Library/Internet Plug-Ins/Silverlight.plugin'

  zap       delete: [
                      '~/Library/Application Support/Microsoft/Silverlight',
                      '~/Library/Preferences/com.microsoft.silverlight.plist',
                      '~/Library/Saved Application State/com.microsoft.silverlight.savedState',
                    ],
            rmdir:  '~/Library/Application Support/Microsoft/'
end
