cask 'pdk' do
  version '1.4.1.2'

  if MacOS.version <= :el_capitan
    sha256 'b71e17ba79c2fe26f973b7996637abf235479ce627dc94e7908a5c67ad42cad1'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.11/PC1/x86_64/pdk-#{version}-1.osx10.11.dmg"
  else
    sha256 '25f51f71f1ce8d40898b2bd374c9e72149e32aa58c09cee2e97d107c1823cafc'
    # puppet-pdk.s3.amazonaws.com/pdk was verified as official when first introduced to the cask
    url "https://puppet-pdk.s3.amazonaws.com/pdk/#{version}/repos/apple/10.12/PC1/x86_64/pdk-#{version}-1.osx10.12.dmg"
  end

  name 'Puppet Development Kit'
  homepage 'https://github.com/puppetlabs/pdk'

  depends_on macos: '>= :el_capitan'

  pkg "pdk-#{version}-1-installer.pkg"

  uninstall pkgutil: 'com.puppetlabs.pdk'
end
