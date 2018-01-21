cask 'iexplorer' do
  version '4.1.14'
  sha256 '38c1eb9a6f4651759f49b367b2951e44002fb12b7e5de609a6ba2871f143d254'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
