cask "beyond-compare" do
  version "5.0.6.30713"
  sha256 "9ed0a485cab687c770702554d14e81dac8b0fdf0dc65e4d982b70f0b9674ec3b"

  url "https://www.scootersoftware.com/files/BCompareOSX-#{version}.zip"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  livecheck do
    url "https://www.scootersoftware.com/download"
    regex(/BCompareOSX[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  conflicts_with cask: [
    "beyond-compare@4",
    "beyond-compare@beta",
  ]
  depends_on macos: ">= :monterey"

  app "Beyond Compare.app"
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"

  zap trash: [
    "~/Library/Application Support/Beyond Compare*",
    "~/Library/Caches/com.apple.helpd/Generated/Beyond Compare Help*",
    "~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*",
    "~/Library/Caches/com.ScooterSoftware.BeyondCompare",
    "~/Library/Containers/com.ScooterSoftware.BeyondCompare.BCFinder",
    "~/Library/Preferences/com.ScooterSoftware.BeyondCompare.plist",
    "~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState",
  ]
end
