cask "pastenow" do
  version "2.33,764"
  sha256 "280f9b21c6de53af3899211c37a7c4feb6ec9e89b140ae8aeb1aa9361f11a3bb"

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
