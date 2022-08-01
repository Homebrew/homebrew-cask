cask "quicken" do
  version "6.8.3,608.44884.100"
  sha256 "6ac78f40b9e616f9a08b118b9a0d63089468fc2639979b3d18105a1eb8d33110"

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
