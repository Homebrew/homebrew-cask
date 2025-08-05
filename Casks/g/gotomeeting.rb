cask "gotomeeting" do
  version "19950"
  sha256 "64c3b31b35f27027a93a092f3a1c36cf23d551b4bccd384fa45bdca4a672c91c"

  url "https://builds.cdn.getgo.com/builds/g2m/#{version}/GoToMeeting.dmg",
      verified: "builds.cdn.getgo.com/builds/g2m/"
  name "GoToMeeting"
  desc "Online meetings, desktop sharing, and video conferencing"
  homepage "https://www.goto.com/meeting"

  livecheck do
    url "https://link.gotomeeting.com/latest-dmg"
    regex(%r{/([^/]+)/GoToMeeting\.dmg}i)
    strategy :header_match
  end

  app "GoToMeeting.app"

  zap trash: [
    "~/Library/Application Support/LogMeInInc/GoToMeeting",
    "~/Library/Application Support/LogMeInInc/GoToMeetingElectron",
    "~/Library/LaunchAgents/com.logmein.GoToMeeting.G2MAIRUploader.plist",
    "~/Library/LaunchAgents/com.logmein.GoToMeeting.G2MUpdate.plist",
  ]

  caveats do
    requires_rosetta
  end
end
