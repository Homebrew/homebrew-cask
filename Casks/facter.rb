cask 'facter' do
  version '2.4.4'
  sha256 '84212e09e30e174a84ac77227496055f6708eb853fb34a02ad290e6bb4cf9e34'

  url "https://downloads.puppetlabs.com/mac/facter-#{version}.dmg"
  name 'Facter'
  homepage 'https://puppetlabs.com/facter'
  license :apache

  pkg "facter-#{version}.pkg"

  uninstall pkgutil: 'com.puppetlabs.facter'
end
