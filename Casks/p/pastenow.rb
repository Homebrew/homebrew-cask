cask "pastenow" do
  version "2.41,901"
  sha256 "d4bcf86133ff41c5d8c9b9b3ad397abfbeaa778e235d2af5810cc89297b6d65d"

  url "https://pastenow.app/api/release_manager/downloads/app.pastenow.PasteNow/#{version.csv.second}.zip"
  name "PasteNow"
  desc "Clipboard manager"
  homepage "https://pastenow.app/"

  livecheck do
    url "https://pastenow.app/api/release_manager/app.pastenow.PasteNow.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PasteNow.app"

  zap trash: [
    "~/Library/Application Scripts/*app.pastenow.PasteNow",
    "~/Library/Caches/app.pastenow.PasteNow",
    "~/Library/Containers/app.pastenow.PasteNow",
    "~/Library/Group Containers/*.app.pastenow.PasteNow",
    "~/Library/HTTPStorages/app.pastenow.PasteNow",
    "~/Library/Preferences/app.pastenow.PasteNow.plist",
  ]
end
