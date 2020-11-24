cask "macdroid" do
  version "1.2"
  sha256 "b969bceebd17ba762fa5072ad43c883e9fa0f08a2e19e1bde9f361a9cf7d4ee2"

  # cdn.electronic.us/products/macdroid/mac/download/ was verified as official when first introduced to the cask
  url "https://cdn.electronic.us/products/macdroid/mac/download/macdroid.dmg"
  appcast "https://cdn.electronic.us/products/macdroid/mac/update/settings.xml"
  name "MacDroid"
  desc "Connect to your Android devices"
  homepage "https://www.macdroid.app/"

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
