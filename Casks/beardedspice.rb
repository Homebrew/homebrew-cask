cask :v1 => 'beardedspice' do
  version '0.2.3'
  sha256 '9597416c94756a6854ce6e594a2b144aa2fcd54db1c27f9ae0ebdd479661ec72'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/beardedspice/beardedspice/raw/releases/BeardedSpice-#{version}.tar.gz"
  name 'BeardedSpice'
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
