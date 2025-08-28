cask "quicken" do
  version "8.3.0,803.58807.100"
  sha256 "9b8aae735fd221dc8b971fd529ecb24cdbe2ced12ec01d94ed35287cca8943b5"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.csv.second}/Quicken-#{version.csv.second}.zip"
  name "Quicken"
  desc "Personal finance manager"
  homepage "https://www.quicken.com/mac"

  livecheck do
    url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Quicken.app"

  zap trash: [
    "~/Library/Application Support/Quicken",
    "~/Library/Preferences/com.quicken.Quicken.plist",
  ]
end
