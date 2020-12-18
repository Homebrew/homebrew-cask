cask "macjournal" do
  version "7.1.1"
  sha256 "dd0ac29e88d2c4f58ae7ce95dc6db2d06b694dfc9c47c7d5f52a33624999d5cb"

  url "https://danschimpf.com/macjournal/MacJournal_#{version}.zip"
  appcast "https://danschimpf.com/appcasts/MacJournal#{version.major}.appcast"
  name "MacJournal"
  desc "Journaling and blogging software"
  homepage "https://danschimpf.com/"

  depends_on macos: ">= :mojave"

  app "MacJournal.app"
end
