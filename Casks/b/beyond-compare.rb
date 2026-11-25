cask "beyond-compare" do
  version "5.2.8.33052"
  sha256 "231c673a77907cb2f480327d1ddc686b32433e0061b077ccc78d9c8ac8813d28"

  url "https://www.scootersoftware.com/files/BCompareOSX-#{version}.zip"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  livecheck do
    url "https://www.scootersoftware.com/download",
        user_agent: :browser
    regex(/BCompareOSX[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  conflicts_with cask: "beyond-compare@4"
  depends_on :macos

  app "Beyond Compare.app"
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"

  zap trash: [
    "~/Library/Application Scripts/com.ScooterSoftware.BeyondCompare.BCFinder",
    "~/Library/Application Support/Beyond Compare*",
    "~/Library/Caches/com.apple.helpd/Generated/Beyond Compare Help*",
    "~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*",
    "~/Library/Caches/com.ScooterSoftware.BeyondCompare",
    "~/Library/Containers/com.ScooterSoftware.BeyondCompare.BCFinder",
    "~/Library/HTTPStorages/com.ScooterSoftware.BeyondCompare",
    "~/Library/Preferences/com.ScooterSoftware.BeyondCompare.plist",
    "~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState",
  ]
end
