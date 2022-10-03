cask "gyazmail" do
  version "1.7"
  sha256 "325071ed1754632b148063b53ed2219dac4c5153d5bbb6272a809a2f6ab9018e"

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
