cask 'royal-tsx' do
  version '3.1.4.9'
  sha256 '2071f97817c19a9baa8757a22879a8ee96bf014c98f88077c8185f2865afa2ff'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '508638cd99782fb30906199b7df01464daae78f698513c803e14df8338120a08'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
