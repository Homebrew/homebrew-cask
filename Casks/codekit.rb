cask :v1 => 'codekit' do
  version '2.4-19051'
  sha256 '358c185cd0c124679ddacc7e941e1bfe9ed80dd3120ec5552ac64cf2ebfcd6f5'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '2bd6ea91ec93ad5667a21bf7ccf12039270e811d352bacbc55c9e74868262cc6'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
