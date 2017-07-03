cask 'iexplorer' do
  version '4.1.2'
  sha256 '5e2c2a4bffe901402872579c929848cad55eaa78d5402587ddf092d384ab1187'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
