cask 'iexplorer' do
  version '4.2.1'
  sha256 'b4fc350aacc2d1d6da04bf92ccb151300c945f037a73c9b4642262696013eb01'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
