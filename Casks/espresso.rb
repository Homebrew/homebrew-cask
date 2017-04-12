cask 'espresso' do
  version '3.0'
  sha256 '48f4af866e75f163770ee3edc48af1a8e2d214ad49a32d94a198ee6e8c0a5104'

  # static.macrabbit.com was verified as official when first introduced to the cask
  url "https://static.macrabbit.com/downloads/Espresso%20v#{version.major}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: '900b7d97f5d419eb7cd390b6416043fa57763a233ea2482227d39764fc17acb1'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  app 'Espresso.app'
end
