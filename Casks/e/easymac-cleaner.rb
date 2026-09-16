cask "easymac-cleaner" do
  version "1.4"
  sha256 "60d546243d009666729ccf291f4d2c28b7ddb8d8d7eafeeb04e3dc16ad336346"

  url "https://updates.martiancat.space/cleaner/EasyMacCleaner-#{version}.zip"
  name "EasyMac Cleaner"
  desc "Cleaning, privacy, and system optimisation utility"
  homepage "https://martiancat.space/products/cleaner.html"

  livecheck do
    url "https://updates.martiancat.space/cleaner/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "EasyMac Cleaner.app"

  uninstall quit: "com.martiancat.easymaccleaner"

  zap trash: [
    "~/Library/Application Support/EasyMac Cleaner",
    "~/Library/Application Support/EasyMacCleaner",
    "~/Library/Caches/com.martiancat.easymaccleaner",
    "~/Library/HTTPStorages/com.martiancat.easymaccleaner",
    "~/Library/Preferences/com.martiancat.easymaccleaner.plist",
    "~/Library/Saved Application State/com.martiancat.easymaccleaner.savedState",
  ]
end
