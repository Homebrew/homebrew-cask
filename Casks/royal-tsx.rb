cask 'royal-tsx' do
  version '3.2.0.1000'
  sha256 'f497685da846d04fad39fe1d6bcdd9de44dbffae5c9dbd03d2f537b2c71c999d'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: 'bd35b1c1e0058db923d7016e73d63f3bd9033789604d9d9a60724a53a496b953'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
