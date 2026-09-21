cask "easymac-cleaner" do
  version "1.5"
  sha256 "f70cdc23028624238995a6c717b34def96bd29b0082771f7e862d465f055de63"

  url "https://updates.martiancat.space/cleaner/EasyMacCleaner-#{version}.zip"
  name "EasyMac Cleaner"
  desc "Cleaning, privacy, and system optimisation utility"
  homepage "https://martiancat.space/products/cleaner.html"

  livecheck do
    url "https://updates.martiancat.space/cleaner/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "EasyMac Cleaner.app"

  zap trash: [
    "~/Library/Application Support/EasyMac Cleaner",
    "~/Library/Application Support/EasyMacCleaner",
    "~/Library/Caches/com.martiancat.easymaccleaner",
    "~/Library/HTTPStorages/com.martiancat.easymaccleaner",
    "~/Library/Preferences/com.martiancat.easymaccleaner.plist",
    "~/Library/Saved Application State/com.martiancat.easymaccleaner.savedState",
  ]
end
