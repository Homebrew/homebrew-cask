cask "easymac-cleaner" do
  version "1.3.1"
  sha256 "a612a1f9fb4b58ccc34d5327f17712b57fbc060903c9c28c8fa0124a18d53660"

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
