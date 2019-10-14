cask 'mission-control-plus' do
  version '1.11'
  sha256 '6575889e11d06c659fcd090e5a9084f0452509e1419ae9bc847ea4233f26e811'

  # github.com/ronyfadel/MissionControlPlusReleases was verified as official when first introduced to the cask
  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission_Control_Plus.zip"
  appcast 'https://github.com/ronyfadel/MissionControlPlusReleases/releases.atom'
  name 'Mission Control Plus'
  homepage 'https://fadel.io/MissionControlPlus'

  depends_on macos: '>= :high_sierra'

  app 'Mission Control Plus.app'
end
