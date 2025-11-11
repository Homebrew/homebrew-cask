cask "pastenow" do
  version "2.26,632"
  sha256 "bf62778fb72b521fe59ebd9ceb63bda6f30301768e2911a79047c79004671b51"

  url "https://pastenow.app/api/release_manager/downloads/app.pastenow.PasteNow/#{version.csv.second}.zip"
  name "PasteNow"
  desc "Clipboard manager"
  homepage "https://pastenow.app/"

  livecheck do
    url "https://pastenow.app/api/release_manager/app.pastenow.PasteNow.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "PasteNow.app"

  zap trash: [
    "~/Library/Caches/app.pastenow.PasteNow",
    "~/Library/HTTPStorages/app.pastenow.PasteNow",
    "~/Library/Preferences/app.pastenow.PasteNow.plist",
  ]
end
