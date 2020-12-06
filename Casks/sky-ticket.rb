cask "sky-ticket" do
  version "8.2.0"
  sha256 :no_check

  # web.static.nowtv.com/watch/player/skyticket/ was verified as official when first introduced to the cask
  url "https://web.static.nowtv.com/watch/player/skyticket/de/latest/SkyTicket-Mac.dmg"
  name "Sky Ticket Player"
  desc "Stream Sky Ticket content"
  homepage "https://skyticket.sky.de/"

  app "Sky Ticket.app"

  zap trash: [
    "~/Library/Logs/Sky Ticket",
    "~/Library/Preferences/com.electron.sky-ticket.helper.plist",
    "~/Library/Preferences/com.electron.sky-ticket.plist",
  ]
end
