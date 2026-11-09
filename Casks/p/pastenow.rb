cask "pastenow" do
  version "2.37,768"
  sha256 "c6610d92cdc2dfab4832e842c13abf95c892e2f892a553126c36a9653fffff51"

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
