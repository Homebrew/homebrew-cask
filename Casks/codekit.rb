cask :v1 => 'codekit' do
  version '2.1.9 (18268)'
  sha256 'ff1c605be76de91cf47214ed17cf1b4d630098259b4a09abfdd2562bc5378e88'

  url 'https://incident57.com/codekit/files/codekit-18268.zip'
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '433feaa40f89043a2cf591145b8d4392d92abee9b84b258d0a3d99833eff4e39'
  homepage 'http://incident57.com/codekit/'
  license :unknown

  app 'CodeKit.app'
end
