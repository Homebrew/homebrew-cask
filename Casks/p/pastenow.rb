cask "pastenow" do
  version "2.24,618"
  sha256 "5b11e1a88ce2457e2617b19dc05cc230467846276ab48e126c5e4076175210ba"

  url "https://pastenow.app/api/release_manager/downloads/app.pastenow.PasteNow/#{version.csv.second}.zip"
  name "PasteNow"
  desc "Clipboard manager"
  homepage "https://pastenow.app/"

  livecheck do
    url "https://pastenow.app/api/release_manager/app.pastenow.PasteNow.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "PasteNow.app"

  zap trash: [
    "~/Library/Caches/app.pastenow.PasteNow",
    "~/Library/HTTPStorages/app.pastenow.PasteNow",
    "~/Library/Preferences/app.pastenow.PasteNow.plist",
  ]
end
