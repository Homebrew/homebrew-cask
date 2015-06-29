cask :v1 => 'codekit' do
  version '2.3.10-19033'
  sha256 '6ace696b81de91d7f5d2b24cb27a6609a72aeadc2d36fb6cda56af2b768b34c8'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => 'fba4e9552ebabca2b700f6bdcdbb83132856d6c467f536250fc34beed9a8f104'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
