cask 'pdk' do
  version '1.3.0.0'

  if MacOS.version <= :el_capitan
    sha256 '5abf29565bfd250d47d4e98193e2e4eb56dc0218d5e4031e4c53e12e13bdc6d7'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.11/PC1/x86_64/pdk-#{version}-1.osx10.11.dmg"
  else
    sha256 '522277adc97f2d30c3b8a91899bc895924ac6850363a9730f9dd343a77097f8a'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.12/PC1/x86_64/pdk-#{version}-1.osx10.12.dmg"
  end

  name 'Puppet Development Kit'
  homepage 'https://github.com/puppetlabs/pdk'

  depends_on macos: '>= :el_capitan'

  pkg "pdk-#{version}-1-installer.pkg"

  uninstall pkgutil: 'com.puppetlabs.pdk'
end
