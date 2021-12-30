cask "gotomeeting" do
  version "19932"
  sha256 "391573efc2043bf4f63be45e3540db531a9c631286d3b8504e5f3029618c825c"

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
