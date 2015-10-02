cask :v1 => 'silverlight' do
  version '5.1.40905.0'
  sha256 :no_check    # required as upstream package is updated in-place

  url 'http://silverlight.dlservice.microsoft.com/download/2/5/8/258A02D8-821B-43FD-830D-D13E3075F600/40905.00/Silverlight.dmg'
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
