cask "pastenow" do
  version "2.34,765"
  sha256 "bac5dbdc7204e7c03da52f5c109b0d932a4bb5b1bcc58ac7e84d2977fa16ed24"

  url "https://pastenow.app/api/release_manager/downloads/app.pastenow.PasteNow/#{version.csv.second}.zip"
  name "PasteNow"
  desc "Clipboard manager"
  homepage "https://pastenow.app/"

  livecheck do
    url "https://pastenow.app/api/release_manager/app.pastenow.PasteNow.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

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
