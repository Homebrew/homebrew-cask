cask :v1 => 'alternote' do
  version '1.0.6_1006'
  sha256 '31ff36a3a02daba52b3363d9f8b75e1183df488ff844f8f7f919f67ba57bb4d2'

  url "http://alternoteapp.com/assets/downloads/Alternote#{version.sub(%r{.*_},'')}.zip"
  appcast 'http://alternoteapp.com/assets/appcast.xml',
          :sha256 => '0cbfc55527716eeab37a3cd8b2ce4fcb91209fdb4a6ecc238a4a44046ce6bfd4'
  name 'Alternote'
  homepage 'http://alternoteapp.com/'
  license :commercial

  app 'Alternote.app'

  uninstall :quit => 'com.Alternote'
end
