cask "beyond-compare" do
  version "5.1.3.31238"
  sha256 "0d79d92aa7df069e82102e6049faa44d28ed44636632685b5d87bdaf1a07d7c0"

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
