cask "quicken" do
  version "6.9.0,609.45401.100"
  sha256 "b49567ad5a2612747a19c77e9194db4be781de30ba6046e41a8b50a88340ec77"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.csv.second}/Quicken-#{version.csv.second}.zip"
  name "Quicken"
  desc "Personal finance manager"
  homepage "https://www.quicken.com/mac"

  livecheck do
    url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Quicken.app"

  zap trash: [
    "~/Library/Application Support/Quicken",
    "~/Library/Preferences/com.quicken.Quicken.plist",
  ]
end
