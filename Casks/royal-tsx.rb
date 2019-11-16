cask 'royal-tsx' do
  version '4.2.0.1000'
  sha256 'bccc360203952794da7dc785e441b38b6d94b1e32f2ca7719dc135f2e58f6c06'

  # https://royaltsx-v4.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  auto_updates :yes

  app 'Royal TSX.app'
end
