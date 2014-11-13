cask :v1 => 'beardedspice' do
  version '0.2.1'
  sha256 '28233946d266a95c390f2393fd80fdd1a82c89499ebae7014d797c75cb28c110'

  url "https://github.com/beardedspice/beardedspice/raw/releases/BeardedSpice-#{version}.tar.gz"
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
