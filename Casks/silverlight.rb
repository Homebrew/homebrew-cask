cask :v1 => 'silverlight' do
  version '5.1.40728.0'
  sha256 :no_check    # required as upstream package is updated in-place

  url 'http://silverlight.dlservice.microsoft.com/download/8/E/7/8E7D9B4B-2088-4AED-8356-20E65BE3EC91/40728.00/Silverlight.dmg'
  name 'Silverlight'
  homepage 'https://www.microsoft.com/silverlight/'
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
