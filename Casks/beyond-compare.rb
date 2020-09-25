cask "beyond-compare" do
  version "4.3.6.25063"
  sha256 "8502e7970dc616f7c257305d9801fb85a69d0c5a3fa10deebf62b37e4eb0fd35"

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast "https://www.scootersoftware.com/download.php"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  auto_updates true

  app "Beyond Compare.app"
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"

  zap trash: [
    "~/Library/Application Support/Beyond Compare",
    "~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*",
    "~/Library/Caches/com.apple.helpd/Generated/Beyond Compare Help*",
    "~/Library/Caches/com.ScooterSoftware.BeyondCompare",
    "~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState",
  ]
end
