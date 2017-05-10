cask 'royal-tsx' do
  version '3.1.3.1000'
  sha256 '2dc27df75186d9d9ba7757a74dafe312594601f98d4f8b24aa65227ab6ee9fa4'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '508638cd99782fb30906199b7df01464daae78f698513c803e14df8338120a08'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
