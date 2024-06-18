cask "ringcentral-meetings" do
  version "21.4.53875.1128"
  sha256 :no_check

  url "https://downloads.ringcentral.com/RCM/RC/meetings/mac/RCMeetingsClientSetup.pkg"
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
