cask :v1 => 'silverlight' do
  version '5.1.30514.0'
  sha256 :no_check    # required as upstream package is updated in-place

  url 'http://silverlight.dlservice.microsoft.com/download/F/8/C/F8C0EACB-92D0-4722-9B18-965DD2A681E9/30514.00/Silverlight.dmg'
  name 'Silverlight'
  homepage 'http://www.microsoft.com/silverlight/'
  license :gratis

  pkg 'Silverlight.pkg'

  uninstall :pkgutil => 'com.microsoft.SilverlightInstaller'
  zap       :delete => [
                        '~/Library/Application Support/Microsoft/Silverlight',
                        '~/Library/Preferences/com.microsoft.silverlight.plist',
                        '~/Library/Saved Application State/com.microsoft.silverlight.savedState'
                       ],
            :rmdir   => '~/Library/Application Support/Microsoft/'
end
