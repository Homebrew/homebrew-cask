cask :v1 => 'netnewswire' do
  version '4.0.1-335'
  sha256 'b5240f104c23f93eacf05a900992db2cd4b3fcb8c2dbdc7a0a504dd4cb8fcb7b'

  url "http://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          :sha256 => '0fd599774d46a48e93893e6bcd88ea959fe9e9d69e0921ab8ef7564016038c54'
  name 'NetNewsWire'
  homepage 'http://netnewswireapp.com/'
  license :commercial

  app 'NetNewsWire.app'
end
