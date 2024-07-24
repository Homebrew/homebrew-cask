cask "quicken" do
  version "7.8.2,708.53926.100"
  sha256 "b5bb586a7a608ae750ddb552cc1c4c7bf1c50fab3c69be1329d56f4037235cee"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.csv.second}/Quicken-#{version.csv.second}.zip"
  name "Quicken"
  desc "Personal finance manager"
  homepage "https://www.quicken.com/mac"

  livecheck do
    url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Quicken.app"

  zap trash: [
    "~/Library/Application Support/Quicken",
    "~/Library/Preferences/com.quicken.Quicken.plist",
  ]
end
