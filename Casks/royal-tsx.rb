cask 'royal-tsx' do
  version '3.1.4.7'
  sha256 'b0d2475df6228a2fc15a7dffedbde97f00481cc316e37fcd6f7b2161ad2b9793'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '508638cd99782fb30906199b7df01464daae78f698513c803e14df8338120a08'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
