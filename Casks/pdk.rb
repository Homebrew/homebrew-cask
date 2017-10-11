cask 'pdk' do
  version '1.2.0.0'

  if MacOS.version <= :el_capitan
    sha256 '5ee3dfd1c25c947a6c5429246d550309e61b51d0f0a31c2c15169498ee4ade88'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.11/PC1/x86_64/pdk-#{version}-1.osx10.11.dmg"
  else
    sha256 '03e8ff4e01588fb66b62949dc4a6aa9c266075643f48c2027d35ff2a6b75fd84'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.12/PC1/x86_64/pdk-#{version}-1.osx10.12.dmg"
  end

  name 'Puppet Development Kit'
  homepage 'https://github.com/puppetlabs/pdk'

  depends_on macos: '>= :el_capitan'

  pkg "pdk-#{version}-1-installer.pkg"

  uninstall pkgutil: 'com.puppetlabs.pdk'
end
