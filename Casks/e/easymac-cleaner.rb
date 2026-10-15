cask "easymac-cleaner" do
  version "1.6.1"
  sha256 "da255c924ffa438e1e800caeba3c3a3748f65f45a44a08699900728174a2a895"

  url "https://updates.martiancat.space/cleaner/EasyMacCleaner-#{version}.zip"
  name "EasyMac Cleaner"
  desc "Cleaning, privacy, and system optimisation utility"
  homepage "https://martiancat.space/products/cleaner.html"

  livecheck do
    url "https://updates.martiancat.space/cleaner/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

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
