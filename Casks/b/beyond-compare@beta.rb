cask "beyond-compare@beta" do
  version "5.0.0.29682"
  sha256 "70859540c1e756c8214660181a332a9d4a5227f7f9bbc3197675f3c88ed706a3"

  url "https://www.scootersoftware.com/files/BCompareOSX-#{version}.zip"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  livecheck do
    url "https://www.scootersoftware.com/beta/download"
    regex(/BCompareOSX[_.-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  conflicts_with cask: "beyond-compare"

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
