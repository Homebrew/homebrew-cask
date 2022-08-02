cask "gyazmail" do
  version "1.6.5"
  sha256 "bc2376ac6a82c46301d59e0d3746ea9f70c1701bcb92ed81da7b151c81a62fde"

  url "http://gyazsquare.com/download/GyazMail-#{version.no_dots}.dmg"
  name "GyazMail"
  desc "Email client"
  homepage "http://gyazsquare.com/gyazmail/"

  livecheck do
    url "https://gyazsquare.com/gyazmail/download/"
    regex(/Download\s*GyazMail\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "GyazMail.app"
end
