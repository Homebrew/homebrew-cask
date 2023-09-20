cask "quicken" do
  version "7.2.3,702.49949.100"
  sha256 "ac09f6db9ca8b2bbb0cdbdd993fa34c79e3d14f3ee0bf8850c605795f11dccf2"

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
