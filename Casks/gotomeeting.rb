cask "gotomeeting" do
  version "10.14.0,18962"
  sha256 "ffcc6a3000eea1841bd79ba67f59036ed8392097f58a2bd438f37239c2c2e7df"

  # builds.cdn.getgo.com/builds/g2m/ was verified as official when first introduced to the cask
  url "https://builds.cdn.getgo.com/builds/g2m/#{version.after_comma}/GoToMeeting.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://link.gotomeeting.com/latest-dmg",
          must_contain: version.after_comma
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
