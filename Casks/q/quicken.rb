cask "quicken" do
  version "9.2.1,902.61841.100"
  sha256 "d2e159866e9517ee943208ab96f577d31460a2d32458e768834deec65d69a616"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.csv.second}/Quicken-#{version.csv.second}.zip"
  name "Quicken"
  desc "Personal finance manager"
  homepage "https://www.quicken.com/products/classic-premier-deluxe-mac/"

  livecheck do
    url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Quicken.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.quicken.quicken.sfl*",
    "~/Library/Application Support/Quicken",
    "~/Library/Caches/com.quicken.Quicken",
    "~/Library/HTTPStorages/com.quicken.Quicken",
    "~/Library/Preferences/com.quicken.Quicken.plist",
  ]
end
