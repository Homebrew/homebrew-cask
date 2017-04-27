cask 'royal-tsx' do
  version '3.1.4.6'
  sha256 '7a973c07adfdc81fc5f1ae191cfb2a84b5c34ae1a42e2d98948da3386654775d'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '508638cd99782fb30906199b7df01464daae78f698513c803e14df8338120a08'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
