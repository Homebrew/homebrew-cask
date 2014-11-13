cask :v1 => 'istumbler' do
  version '100'
  sha256 'f8d9ff03fc2d9feeb05fafa1c9fc1133b6e2017b1ef5235bab4fa12ae4250773'

  url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  homepage 'http://istumbler.net/'
  license :unknown

  app 'iStumbler.app'
end
