cask "pastenow" do
  version "2.23,595"
  sha256 "c86c8428a8eded7ff0f6f2b7f245b1ed1f3b1466cd1a34cb852cdcfea53d8571"

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
