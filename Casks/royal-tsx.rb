cask 'royal-tsx' do
  version '3.0.0.1000'
  sha256 'cd2fce3697f9b414285b2631587d4c2449e0f45a686f1869288e2ac11de958ff'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '0e3d44af016fd5446a0e853ce4dda3991f79239564f50c25a44defea75df6045'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
