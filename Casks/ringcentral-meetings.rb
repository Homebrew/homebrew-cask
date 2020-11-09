cask "ringcentral-meetings" do
  version :latest
  sha256 :no_check

  url "https://dn.ringcentral.com/data/web/download/RCMeetings/1210/RCMeetingsClientSetup.pkg"
  name "RingCentral Meetings for Mac"
  desc "Video conferencing, screen sharing, and team messaging platform"
  homepage "https://www.ringcentral.com/online-meetings/overview.html"

  pkg "RCMeetingsClientSetup.pkg"

  uninstall delete:  "/Applications/RingCentral Meetings.app",
            pkgutil: "us.zoom.pkg.ringcentral",
            quit:    "us.zoom.RingCentralOpener",
            signal:  [
              ["KILL", "us.zoom.ringcentral"],
            ]

  zap trash: [
    "~/Desktop/RingCentral Meetings",
    "~/Library/Application Support/RingCentral Meetings",
    "~/Library/Caches/us.zoom.ringcentral",
    "~/Library/Internet Plug-Ins/RingCentralMeetings.plugin",
    "~/Library/Logs/RingCentralMeetings",
    "~/Library/Logs/rcmeetingsinstall.log",
    "~/Library/Preferences/us.zoom.ringcentral.plist",
    "~/Library/Saved Application State/us.zoom.ringcentral.savedState",
  ]
end
