cask "gyazmail" do
  version "1.6.3"
  sha256 "2a2cfb1b74cc8d6647a5f6fec9759491b3981d524bafe9846ed9ad25744987e1"

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  appcast "http://gyazsquare.com/gyazmail/"
  name "GyazMail"
  homepage "http://gyazsquare.com/gyazmail/"

  app "GyazMail.app"
end
