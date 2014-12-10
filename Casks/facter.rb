cask :v1 => 'facter' do
  version '2.3.0'
  sha256 '35c88c2af26e2c59364604788cd5ff4a1b3d8171e2690e65e38156278e32d6d1'

  url "https://downloads.puppetlabs.com/mac/facter-#{version}.dmg"
  homepage 'https://puppetlabs.com/facter'
  license :unknown    # todo: improve this machine-generated value

  pkg "facter-#{version}.pkg"

  uninstall :pkgutil => 'com.puppetlabs.facter'
end
