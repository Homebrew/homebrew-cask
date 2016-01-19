cask 'puppet' do
  version '3.8.2'
  sha256 '8ff5746e5d3c121b947f27dabeea81766d902885df0d113af4080085a45aff84'

  url "https://downloads.puppetlabs.com/mac/puppet-#{version}.dmg"
  name 'Puppet'
  homepage 'https://puppetlabs.com/'
  license :apache

  depends_on cask: 'facter'

  pkg "puppet-#{version}.pkg"

  uninstall pkgutil: 'com.puppetlabs.puppet'
end
