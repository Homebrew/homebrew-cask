cask :v1 => 'silverlight' do
  version '5.1.40416.0'
  sha256 :no_check    # required as upstream package is updated in-place

  url 'http://silverlight.dlservice.microsoft.com/download/B/D/C/BDCE18B1-73C1-47BA-9B11-46A4C14CF7B0/40416.00/Silverlight.dmg'
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
