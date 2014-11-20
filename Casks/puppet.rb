cask :v1 => 'puppet' do
  version '3.7.3'
  sha256 'f673b9c45dbefa410efa6d7f74ea820a1b01b4f659f142c92310f8ab3df477af'

  url "http://downloads.puppetlabs.com/mac/puppet-#{version}.dmg"
  homepage 'http://puppetlabs.com/'
  license :unknown

  pkg "puppet-#{version}.pkg"
end
