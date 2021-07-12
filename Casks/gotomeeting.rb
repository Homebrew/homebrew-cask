cask "gotomeeting" do
  version "19796"
  sha256 "8d62191a82b7cde95d2e95d31ac1893771adaa4185a51ccaadd24baefb23a548"

  url "https://builds.cdn.getgo.com/builds/g2m/#{version}/GoToMeeting.dmg",
      verified: "builds.cdn.getgo.com/builds/g2m/"
  name "GoToMeeting"
  desc "Online meetings, desktop sharing, and video conferencing"
  homepage "https://www.goto.com/meeting"

  livecheck do
    url "https://link.gotomeeting.com/latest-dmg"
    strategy :header_match do |headers|
      headers["location"][%r{/([^/]+)/GoToMeeting\.dmg}i, 1]
    end
  end

  app "GoToMeeting.app"

  zap trash: [
    "~/Library/Application Support/LogMeInInc/GoToMeeting",
    "~/Library/Application Support/LogMeInInc/GoToMeetingElectron",
    "~/Library/LaunchAgents/com.logmein.GoToMeeting.G2MAIRUploader.plist",
    "~/Library/LaunchAgents/com.logmein.GoToMeeting.G2MUpdate.plist",
  ]
end
