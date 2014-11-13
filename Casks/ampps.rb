cask :v1 => 'ampps' do
  version '2.3'
  sha256 'ce7a1a7e71f0314edbc994e10fe4f6a80303c1999904ca1fb14d98c7477ae8e0'

  url "http://files.ampps.com/AMPPS-#{version}.dmg"
  homepage 'http://www.ampps.com'
  license :unknown

  suite 'AMPPS'
end
