cask "gotomeeting" do
  version "10.12.0,18425"
  sha256 "ac6ecdd0f45f50bbae3ff2d4b1e02ba404af28027f76079c8d0e67a3484439d9"

  # builds.cdn.getgo.com/builds/g2m/ was verified as official when first introduced to the cask
  url "https://builds.cdn.getgo.com/builds/g2m/#{version.after_comma}/GoToMeeting.dmg"
  appcast "https://support.goto.com/meeting/help/whats-new-g2m010012"
  name "GotoMeeting"
  desc "Online meeting, desktop sharing and video conferencing software package"
  homepage "https://www.goto.com/meeting"

  app "GotoMeeting.app"

  zap trash: [
    "~/Library/Application Support/LogMeInInc/GoToMeeting",
    "~/Library/Application Support/LogMeInInc/GoToMeetingElectron",
    "~/Library/LaunchAgents/com.logmein.GoToMeeting.G2MAIRUploader.plist",
    "~/Library/LaunchAgents/com.logmein.GoToMeeting.G2MUpdate.plist",
  ]
end
