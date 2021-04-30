cask "sky-ticket" do
  version "8.3.0"
  sha256 :no_check

  url "https://web.static.nowtv.com/watch/player/skyticket/de/latest/SkyTicket-Mac.dmg",
      verified: "web.static.nowtv.com/watch/player/skyticket/"
  name "Sky Ticket Player"
  desc "Stream Sky Ticket content"
  homepage "https://skyticket.sky.de/"

  livecheck do
    skip "unversioned URL"
  end

  app "Sky Ticket.app"

  zap trash: [
    "~/Library/Logs/Sky Ticket",
    "~/Library/Preferences/com.electron.sky-ticket.helper.plist",
    "~/Library/Preferences/com.electron.sky-ticket.plist",
  ]
end
