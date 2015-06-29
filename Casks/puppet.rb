cask :v1 => 'puppet' do
  version '3.7.4'
  sha256 '8eb17151199cc8c726fd64a56aba20b25627f699ce841ce9d04dbe59edbe3223'

  url "https://downloads.puppetlabs.com/mac/puppet-#{version}.dmg"
  name 'Puppet'
  homepage 'https://puppetlabs.com/'
  license :apache

  pkg "puppet-#{version}.pkg"

  uninstall :pkgutil => 'com.puppetlabs.puppet'
  depends_on :cask => 'facter'
end
