cask "macdroid" do
  version "1.4,124"
  sha256 :no_check

  url "https://cdn.electronic.us/products/macdroid/mac/download/macdroid.dmg",
      verified: "cdn.electronic.us/products/macdroid/mac/download/"
  name "MacDroid"
  desc "Connect to your Android devices"
  homepage "https://www.macdroid.app/"

  livecheck do
    url "https://cdn.electronic.us/products/macdroid/mac/update/settings.xml"
    strategy :sparkle
  end

  auto_updates true

  app "MacDroid.app"

  zap trash: [
    "~/Library/Application Scripts/us.electronic.macdroid.AFTFinderSync",
    "~/Library/Application Support/MacDroid",
    "~/Library/Application Support/us.electronic.macdroid",
    "~/Library/Caches/us.electronic.macdroid",
    "~/Library/Containers/us.electronic.macdroid.AFTFinderSync",
    "~/Library/Group Containers/XS85JU6YZ3.us.electronic.macdroid",
    "~/Library/HTTPStorages/us.electronic.macdroid.binarycookies",
    "~/Library/Logs/MacDroid.log",
    "~/Library/Preferences/us.electronic.macdroid.plist",
  ]
end
