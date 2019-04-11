cask 'royal-tsx' do
  version '4.1.0.1000'
  sha256 'adcbfefd516651c103f6f36618775f5914c4d58d5ba45a48c31237467bb65c71'

  # https://royaltsx-v4.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
