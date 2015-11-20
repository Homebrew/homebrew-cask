cask :v1 => 'codekit' do
  version '2.6-19099'
  sha256 'ea704230705d911a1437f71cd94f7bd93ec0d545839a7eccd0b18c7a4157bc3f'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '72fc08fe815cb3faf6a6fb19dfcb4f0c4f0494bbdb7b1e8da8b87772db5dd88c'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
