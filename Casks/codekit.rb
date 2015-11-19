cask :v1 => 'codekit' do
  version '2.5.1-19076'
  sha256 '7e41f7a0e3b36607fb33a758d21f1f51ea3902888448facd26ddf009b4c79f70'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '72fc08fe815cb3faf6a6fb19dfcb4f0c4f0494bbdb7b1e8da8b87772db5dd88c'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
