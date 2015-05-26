cask :v1 => 'facter' do
  version '2.4.1'
  sha256 'd1a5bd1dce79878096f089facecae7e7d4114ca2253db4d4e93345b96705a25d'

  url "https://downloads.puppetlabs.com/mac/facter-#{version}.dmg"
  name 'Facter'
  homepage 'https://puppetlabs.com/facter'
  license :apache

  pkg "facter-#{version}.pkg"

  uninstall :pkgutil => 'com.puppetlabs.facter'
end
