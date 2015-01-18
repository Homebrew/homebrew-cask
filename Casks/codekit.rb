cask :v1 => 'codekit' do
  version '2.1.9-18270'
  sha256 '6d31f4a7018b9ee82a60153dd30853e002eae0b56178989c5e0e1dd99f953fbb'

  url "http://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '433feaa40f89043a2cf591145b8d4392d92abee9b84b258d0a3d99833eff4e39'
  homepage 'http://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
