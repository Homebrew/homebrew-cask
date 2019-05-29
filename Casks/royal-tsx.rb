cask 'royal-tsx' do
  version '4.1.1.1000'
  sha256 '6dae38e416ba22fa82f5866d73118938075746add56d47a12cbf336d997d1cb6'

  # https://royaltsx-v4.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
