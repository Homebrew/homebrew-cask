cask "pastenow" do
  version "2.23.1,596"
  sha256 "138e32dfdd4366b44941415ad3060eeaa651c380e043d19ac55ac3db46ffcf6e"

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
