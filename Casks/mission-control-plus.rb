cask 'mission-control-plus' do
  version '1.1'
  sha256 'a86cb92dca85d040a8a43ce587441e02964d71a8452a5137805b51613aaa02bf'

  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission_Control_Plus.zip"
  appcast 'https://github.com/ronyfadel/MissionControlPlusReleases/releases.atom'
  name 'Mission Control Plus'
  homepage 'https://fadel.io/MissionControlPlus'

  app 'Mission Control Plus.app'
end
