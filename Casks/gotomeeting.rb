cask "gotomeeting" do
  version "19598"
  sha256 "21b67340c17bfd9f0bddde4783da0b8d537eb2787996212c3930a510944e287a"

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
