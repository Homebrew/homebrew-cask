cask 'royal-tsx' do
  version '4.1.2.1000'
  sha256 '0b1088442ea76c82098a001955845494087b917517bf1b07fd22766ab9b22808'

  # https://royaltsx-v4.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  auto_updates :yes

  app 'Royal TSX.app'
end
