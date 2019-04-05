cask 'iexplorer' do
  version '4.2.7'
  sha256 'db92c7561856d7e355acc4ade0014cd313482e18d59d2017414aab0021cf6ff1'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  appcast 'https://macroplant.com/iexplorer/mac/v4/appcast'
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
