cask 'royal-tsx' do
  version '3.2.5.1000'
  sha256 '2b8d6b2f8fa26da0f3c9593ee97b963627e3513cb280db2ea4c10cceb72bd14b'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '8a880a488a47976046926f2e667b732a14dbebe40d910242a57772253b228869'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
