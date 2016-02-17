cask 'puppet' do
  version '3.8.6'
  sha256 '25ab90342614b8875e4fac0c1421ea9df8fc63c999f4ef66ad41fdf559f933cf'

  url "https://downloads.puppetlabs.com/mac/puppet-#{version}.dmg"
  name 'Puppet'
  homepage 'https://puppetlabs.com/'
  license :apache

  depends_on cask: 'facter'

  pkg "puppet-#{version}.pkg"

  uninstall pkgutil: 'com.puppetlabs.puppet'
end
