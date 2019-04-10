cask 'iexplorer' do
  version '4.2.9'
  sha256 '03342071aa2a952c6ad3330187ab0bcf76ddc8c6d857d21b1d61c9127aa1f88f'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  appcast 'https://macroplant.com/iexplorer/mac/v4/appcast'
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
