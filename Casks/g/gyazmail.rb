cask "gyazmail" do
  version "1.7.1"
  sha256 "002ad687dedfc9eea6391b4241312e35b6143d5caa0a813d8fe4e323a568fbfb"

  url "https://gyazsquare.com/download/GyazMail-#{version.no_dots}.dmg"
  name "GyazMail"
  desc "Email client"
  homepage "https://gyazsquare.com/gyazmail/"

  livecheck do
    url "https://gyazsquare.com/gyazmail/download/"
    regex(/Download\s*GyazMail\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "GyazMail.app"

  caveats do
    requires_rosetta
  end
end
