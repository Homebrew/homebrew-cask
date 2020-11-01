cask "sky-ticket" do
  version :latest
  sha256 :no_check

  # web.static.nowtv.com was verified as official when first introduced to the cask
  url "https://web.static.nowtv.com/watch/player/skyticket/de/latest/SkyTicket-Mac.dmg"
  name "Sky Ticket Player"
  desc "Stream Sky Ticket content"
  homepage "https://skyticket.sky.de/"

  app "Sky Ticket.app"
end
