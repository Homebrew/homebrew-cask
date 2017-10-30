cask 'pdk' do
  version '1.2.1.0'

  if MacOS.version <= :el_capitan
    sha256 'c06005f7e4da68ff56d1a1761eabfbce54340b0cbbc9019fc62feb2c3374076e'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.11/PC1/x86_64/pdk-#{version}-1.osx10.11.dmg"
  else
    sha256 'd9b1941579a9333d29fd77615103265cb39d87a0e713fa244ceb5974b11f2c17'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.12/PC1/x86_64/pdk-#{version}-1.osx10.12.dmg"
  end

  name 'Puppet Development Kit'
  homepage 'https://github.com/puppetlabs/pdk'

  depends_on macos: '>= :el_capitan'

  pkg "pdk-#{version}-1-installer.pkg"

  uninstall pkgutil: 'com.puppetlabs.pdk'
end
