cask "sky-ticket" do
  version "8.10.0"
  sha256 "4d4d1022c722ab11a694d02a18eb8894288719930ea93fd322c24d816a468c76"

  url "https://web.static.nowtv.com/watch/player/skyticket/de/#{version}/SkyTicket-Mac.dmg",
      verified: "web.static.nowtv.com/watch/player/skyticket/"
  name "Sky Ticket Player"
  desc "Stream Sky Ticket content"
  homepage "https://skyticket.sky.de/"

  livecheck do
    url "https://web.static.nowtv.com/watch/player/skyticket/de/latest/update.json"
    strategy :page_match do |page|
      JSON.parse(page)["platforms"]["darwin"]["version"]
    end
  end

  app "Sky Ticket.app"

  zap trash: [
    "~/Library/Logs/Sky Ticket",
    "~/Library/Preferences/com.electron.sky-ticket.helper.plist",
    "~/Library/Preferences/com.electron.sky-ticket.plist",
  ]
end
