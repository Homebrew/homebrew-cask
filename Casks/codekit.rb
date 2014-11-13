cask :v1 => 'codekit' do
  version '2.1.8 (18027)'
  sha256 'b31769ae91834a06499d876c82f2f2b1ce8b379047aa5d89e7d4f50971328a83'

  url 'https://incident57.com/codekit/files/codekit-18027.zip'
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => 'ff5efaf30dbd3190c9c06c8cbfcf1eb6c0f49a1ca803aac6d8e913685a35aacd'
  homepage 'http://incident57.com/codekit/'
  license :unknown

  app 'CodeKit.app'
end
