cask :v1 => 'netnewswire' do
  version '4.0.0-317'
  sha256 '36d9427e3cf7e80d3d8a10bb5106a8681aba0d5bff30c864caca85d97d2ca989'

  url "http://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          :sha256 => '33564e80110c0e5bc562bf65f09046d95afcbab79d0e9c49617c2b8548a64cc2'
  name 'NetNewsWire'
  homepage 'http://netnewswireapp.com/'
  license :commercial

  app 'NetNewsWire.app'
end
