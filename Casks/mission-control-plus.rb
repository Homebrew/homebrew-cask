cask 'mission-control-plus' do
  version '1.13'
  sha256 'cc56395c2d836ae141f6da7e0db4f84a01375d6097b9b11b5fc5707fc8ed6b24'

  # github.com/ronyfadel/MissionControlPlusReleases was verified as official when first introduced to the cask
  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/#{version}/Mission.Control.Plus.tgz"
  appcast 'https://github.com/ronyfadel/MissionControlPlusReleases/releases.atom'
  name 'Mission Control Plus'
  homepage 'https://fadel.io/MissionControlPlus'

  depends_on macos: '>= :high_sierra'

  app 'Mission Control Plus.app'
end
