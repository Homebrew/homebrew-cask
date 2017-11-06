cask 'royal-tsx' do
  version '3.2.2.1000'
  sha256 'c293223736309c7262a9a75ab07935e189161946246450fd10660ce417baf42a'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '33cd4e8b643db6846465e793ce59d5cf7a2660d1a24856b21c64ee3df33911d9'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
