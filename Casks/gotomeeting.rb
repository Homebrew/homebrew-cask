cask "gotomeeting" do
  version "10.13.1,18705"
  sha256 "e8f62a7715e6e28f3973b653d3ac8a771d6dc2183311234e8e47ace5e56f4b17"

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
