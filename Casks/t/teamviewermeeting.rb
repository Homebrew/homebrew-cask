cask "teamviewermeeting" do
  version "15.48.5"
  sha256 "eea8eb1d3a32cf77cd8630e13794eb97e319ffc8467248beb1ce8b15197d97c0"

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
