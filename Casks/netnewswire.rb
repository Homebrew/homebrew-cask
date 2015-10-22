cask :v1 => 'netnewswire' do
  version '4.0.0-326'
  sha256 'ffcc7e8a67a6735f98980b1e6b363143646870b0e2f8cf65a1fda15d8eae16d3'

  url "http://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          :sha256 => '94068de0a7b32d0fcfc3afcfdd10d93e19101984e0cf99ab64e200d246ff5cd1'
  name 'NetNewsWire'
  homepage 'http://netnewswireapp.com/'
  license :commercial

  app 'NetNewsWire.app'
end
