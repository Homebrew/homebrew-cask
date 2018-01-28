cask 'royal-tsx' do
  version '3.2.7.1000'
  sha256 '7a6619af745169f9cf07161b058000174377ddf938cd4db8c4ce76d788ac4b08'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '2294eed90424d7a3771beada4737c76718e335851b67d6d7261bfc0a77d8c8e1'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
