cask :v1 => 'facter' do
  version '2.4.0'
  sha256 'd41ac4e51890ac5106e9d57829319d517a8e61fcd7101aaaf820f613fcd7c9dd'

  url "https://downloads.puppetlabs.com/mac/facter-#{version}.dmg"
  homepage 'https://puppetlabs.com/facter'
  license :apache

  pkg "facter-#{version}.pkg"

  uninstall :pkgutil => 'com.puppetlabs.facter'
end
