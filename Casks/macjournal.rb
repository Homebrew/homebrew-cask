cask "macjournal" do
  version "7.0.3"
  sha256 "981675196217b9776cfadcbdb244a74075648788b421b502e289fc82331cd1b5"

  url "https://danschimpf.com/macjournal/MacJournal_#{version}.zip"
  appcast "https://danschimpf.com/appcasts/MacJournal#{version.major}.appcast"
  name "MacJournal"
  desc "Journaling and blogging software"
  homepage "https://danschimpf.com/"

  app "MacJournal.app"
end
