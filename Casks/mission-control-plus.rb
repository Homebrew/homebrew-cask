cask 'mission-control-plus' do
  version '1.1'
  sha256 'a86cb92dca85d040a8a43ce587441e02964d71a8452a5137805b51613aaa02bf'

  name 'Mission Control Plus'
  # The app's homepage is at fadel.io, and the binaries are distributed via Github Releases.
  homepage 'https://fadel.io/MissionControlPlus'
  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v1.1/Mission_Control_Plus.zip"

  app 'Mission Control Plus.app'
  appcast 'https://raw.githubusercontent.com/ronyfadel/MissionControlPlusReleases/master/appcast.xml'
end
