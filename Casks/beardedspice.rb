cask :v1 => 'beardedspice' do
  version '0.2.2'
  sha256 '910e1ddf4e84ffc8cfce39aa93b85243189af3248d22d01f8eea1407bceba978'

  url "https://github.com/beardedspice/beardedspice/raw/releases/BeardedSpice-#{version}.tar.gz"
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
