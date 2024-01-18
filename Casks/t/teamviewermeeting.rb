cask "teamviewermeeting" do
  version "15.48.6"
  sha256 "30b42ba7e0e4e71de65f726b6d0ddb6a7e2a67390fc65cf534e4c32c504da241"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  name "TeamViewerMeeting"
  desc "Videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  livecheck do
    url "https://download.teamviewer.com/blizz/mac"
    strategy :header_match
  end

  app "TeamViewerMeeting.app"
end
