cask 'mission-control-plus' do
  version '1.12'
  sha256 'f72c46afed7c3bc0c2fe521443fc8c70d299d730356589ed35a525ccb058a5b3'

  # github.com/ronyfadel/MissionControlPlusReleases was verified as official when first introduced to the cask
  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission_Control_Plus.zip"
  appcast 'https://github.com/ronyfadel/MissionControlPlusReleases/releases.atom'
  name 'Mission Control Plus'
  homepage 'https://fadel.io/MissionControlPlus'

  depends_on macos: '>= :high_sierra'

  app 'Mission Control Plus.app'
end
