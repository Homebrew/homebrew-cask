cask "pastenow" do
  version "2.31,757"
  sha256 "7dd4cba5d79b028c22dc3d62636cbf2b003c6293fa2e9a4d2f40de2af4ddc592"

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
