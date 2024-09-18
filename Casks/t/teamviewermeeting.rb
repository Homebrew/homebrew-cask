cask "teamviewermeeting" do
  version "15.57.4"
  sha256 "60d74992f33f36f5329f8c31e686a7033929bfdb95d2b425005fd2f446ce284f"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  name "TeamViewerMeeting"
  desc "Videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  livecheck do
    url "https://download.teamviewer.com/blizz/mac"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "TeamViewerMeeting.app"

  zap trash: [
    "~/Library/Caches/com.teamviewer.blizz",
    "~/Library/HTTPStorages/com.teamviewer.blizz",
    "~/Library/Preferences/com.teamviewer.blizz.plist",
    "~/Library/Preferences/com.teamviewer.blizz.preferences.Machine.plist",
    "~/Library/Preferences/com.teamviewer.blizz.preferences.plist",
  ]
end
