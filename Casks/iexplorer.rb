cask 'iexplorer' do
  version '4.0.10.0'
  sha256 '4d4ec33e065a7c1e9cf124516c69f7086f8c1419888f37d821919fd7bc4a095b'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast "https://www.macroplant.com/iexplorer/ie#{version.major}-appcast.xml",
          checkpoint: 'a2c5f6cb31d8d18b94527522631551e9959a1fb95745e1fa8cf088141fbcd649'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
