cask 'silverlight' do
  version '5.1.41105.0'
  sha256 :no_check    # required as upstream package is updated in-place

  url 'http://download.microsoft.com/download/8/5/8/858377D7-5FDE-410D-B2FA-411B8078D227/41105/41105.00/Silverlight.dmg'
  name 'Silverlight'
  homepage 'https://www.microsoft.com/silverlight/'
  license :gratis

  pkg 'silverlight.pkg'

  uninstall :pkgutil => 'com.microsoft.SilverlightInstaller'
  zap       :delete => [
                        '~/Library/Application Support/Microsoft/Silverlight',
                        '~/Library/Preferences/com.microsoft.silverlight.plist',
                        '~/Library/Saved Application State/com.microsoft.silverlight.savedState'
                       ],
            :rmdir   => '~/Library/Application Support/Microsoft/'
end
