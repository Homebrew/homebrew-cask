cask 'bankid' do
  version '7.6.0'
  sha256 '5201f989ddf3f1f2386872c46de5c9809208fc6211330e6195aa02e3bc7736fe'

  url "https://install.bankid.com/Repository/BankID_installation_#{version.dots_to_underscores}.pkg"
  name 'BankID'
  homepage 'https://install.bankid.com/'

  pkg "BankID_installation_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.bankid.BankID'
end
