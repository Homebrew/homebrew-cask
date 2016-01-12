cask 'netnewswire' do
  version '4.0.1-335'
  sha256 'b5240f104c23f93eacf05a900992db2cd4b3fcb8c2dbdc7a0a504dd4cb8fcb7b'

  url "http://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          :sha256 => '23ebe86c31816e492ad4bf62f8aef23f789fbb3a03cb53dd57d39734f07e02a9'
  name 'NetNewsWire'
  homepage 'http://netnewswireapp.com/'
  license :commercial

  app 'NetNewsWire.app'
end
