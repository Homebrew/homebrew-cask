cask "macjournal" do
  version "7.0.4"
  sha256 "e5284f99961ebfbe3d19e39d6b2206c781d109a0b6806b1481004f06eb5ecb50"

  url "https://danschimpf.com/macjournal/MacJournal_#{version}.zip"
  appcast "https://danschimpf.com/appcasts/MacJournal#{version.major}.appcast"
  name "MacJournal"
  desc "Journaling and blogging software"
  homepage "https://danschimpf.com/"

  app "MacJournal.app"
end
