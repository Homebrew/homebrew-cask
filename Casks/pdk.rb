cask 'pdk' do
  version '1.3.1.0'

  if MacOS.version <= :el_capitan
    sha256 '1dbae3da7a2ce0f26ed1a447a6bd407f6ad7c033985d9743a88df57825764d50'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.11/PC1/x86_64/pdk-#{version}-1.osx10.11.dmg"
  else
    sha256 'd2ed3bdb73cc05237667f586bce64a8e6e13685e82289136ccf221c0b306cfea'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.12/PC1/x86_64/pdk-#{version}-1.osx10.12.dmg"
  end

  name 'Puppet Development Kit'
  homepage 'https://github.com/puppetlabs/pdk'

  depends_on macos: '>= :el_capitan'

  pkg "pdk-#{version}-1-installer.pkg"

  uninstall pkgutil: 'com.puppetlabs.pdk'
end
