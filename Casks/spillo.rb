cask :v1 => 'spillo' do
  version '1.6.3'
  sha256 'a6193dd3b3cd8283fbeb1d5b92255e4c82073b5befc8638ba95397f98b4a2ecf'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  name 'Spillo'
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          :sha256 => '1e7e2f8bbaede766bef1157ee3d33758b2a09a10de2fb00aa1a5157cdc0f9035'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
