cask 'puppet' do
  version '3.8.7'
  sha256 '2d518bd47e88a94aa38ec263c9fd4ccf35df51cbbd1779822bb749e9edde70b2'

  url "https://downloads.puppetlabs.com/mac/puppet-#{version}.dmg"
  name 'Puppet'
  homepage 'https://puppetlabs.com/'
  license :apache

  depends_on cask: 'facter'

  pkg "puppet-#{version}.pkg"

  uninstall pkgutil: 'com.puppetlabs.puppet'
end
