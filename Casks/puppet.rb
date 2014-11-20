cask :v1 => 'puppet' do
  version '3.7.3'
  sha256 'f673b9c45dbefa410efa6d7f74ea820a1b01b4f659f142c92310f8ab3df477af'

  url 'http://downloads.puppetlabs.com/mac/puppet-3.7.3.dmg'
  homepage 'http://puppetlabs.com/'
  license :unknown

  pkg 'puppet-3.7.3.pkg'
end
