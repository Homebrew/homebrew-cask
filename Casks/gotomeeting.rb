cask "gotomeeting" do
  version :latest
  sha256 :no_check

  url "https://link.gotomeeting.com/latest-dmg"
  name "GoToMeeting"
  desc "Online meetings, desktop sharing, and video conferencing"
  homepage "https://www.goto.com/meeting"

  app "GoToMeeting.app"

  zap trash: [
    "~/Library/Application Support/LogMeInInc/GoToMeeting",
    "~/Library/Application Support/LogMeInInc/GoToMeetingElectron",
    "~/Library/LaunchAgents/com.logmein.GoToMeeting.G2MAIRUploader.plist",
    "~/Library/LaunchAgents/com.logmein.GoToMeeting.G2MUpdate.plist",
  ]
end
