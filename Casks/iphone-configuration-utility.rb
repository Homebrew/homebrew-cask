cask :v1 => 'iphone-configuration-utility' do
  version '3.5'
  sha256 '822204947ae5f7739bcb1e9694814f8e3ef65cd184952b76104f525d97a28163'

  url 'https://support.apple.com/downloads/DL1465/en_US/iPhoneConfigUtility.dmg'
  homepage 'http://support.apple.com/kb/DL1465'
  license :unknown

  pkg 'iPhoneConfigurationUtility.pkg'
  # note - do not uninstall via :pkgutil, as system files would be deleted
  uninstall :delete => '/Applications/Utilities/iPhone Configuration Utility.app'
end
