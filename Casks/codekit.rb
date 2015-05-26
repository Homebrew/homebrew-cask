cask :v1 => 'codekit' do
  version '2.3.7-18917'
  sha256 '5958b170026f37bb78b31a9251cd1ccafb2239d9a85e9729593948b9d00255fc'

  url "http://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => 'fba4e9552ebabca2b700f6bdcdbb83132856d6c467f536250fc34beed9a8f104'
  name 'CodeKit'
  homepage 'http://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
