cask "ringcentral-meetings" do
  version "21.1.53852.0426"
  sha256 :no_check

  url "https://dn.ringcentral.com/data/web/download/RCMeetings/1210/RCMeetingsClientSetup.pkg"
  name "RingCentral Meetings"
  desc "Video conferencing, screen sharing, and team messaging platform"
  homepage "https://www.ringcentral.com/online-meetings/overview.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "RCMeetingsClientSetup.pkg"

  uninstall quit:    "us.zoom.RingCentralOpener",
            signal:  ["KILL", "us.zoom.ringcentral"],
            pkgutil: "us.zoom.pkg.ringcentral",
            delete:  "/Applications/RingCentral Meetings.app"

  zap trash: [
    "~/Desktop/RingCentral Meetings",
    "~/Library/Application Support/RingCentral Meetings",
    "~/Library/Caches/us.zoom.ringcentral",
    "~/Library/Internet Plug-Ins/RingCentralMeetings.plugin",
    "~/Library/Logs/rcmeetingsinstall.log",
    "~/Library/Logs/RingCentralMeetings",
    "~/Library/Preferences/us.zoom.ringcentral.plist",
    "~/Library/Saved Application State/us.zoom.ringcentral.savedState",
  ]
end
