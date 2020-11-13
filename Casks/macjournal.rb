cask "macjournal" do
  version "7.1"
  sha256 "b1052326234fa3199a15120f4339eafeab2391223410f48fbfea445e5b506964"

  url "https://danschimpf.com/macjournal/MacJournal_#{version}.zip"
  appcast "https://danschimpf.com/appcasts/MacJournal#{version.major}.appcast"
  name "MacJournal"
  desc "Journaling and blogging software"
  homepage "https://danschimpf.com/"

  app "MacJournal.app"
end
