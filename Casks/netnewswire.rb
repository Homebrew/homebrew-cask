cask 'netnewswire' do
  version '4.0.1-335'
  sha256 'b5240f104c23f93eacf05a900992db2cd4b3fcb8c2dbdc7a0a504dd4cb8fcb7b'

  url "http://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          checkpoint: 'cee1d039a2ffc06b54fb22d46af75f49ecbf8c48fd84068ff92aabcab48744c8'
  name 'NetNewsWire'
  homepage 'http://netnewswireapp.com/'
  license :commercial

  app 'NetNewsWire.app'
end
