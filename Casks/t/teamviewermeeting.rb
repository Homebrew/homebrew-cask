cask "teamviewermeeting" do
  version "15.30.3"
  sha256 "a7c62973704ed6f4751b72def70d99870acea7249fa1bd5bc1bcdaac238f539c"

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
