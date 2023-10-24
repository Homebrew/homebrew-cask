cask "teamviewermeeting" do
  version "15.46.8"
  sha256 "bdcb8c9a9d8773325a0bb00a94deccb9aa3f7197f28af01b10f4c6a5dc40be10"

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
