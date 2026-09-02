cask "beyond-compare" do
  version "5.2.5.32528"
  sha256 "f913d05e082c785f35e9532facd93e5165c1d27547ef92c9e0c196cb85b3aba3"

  url "https://www.scootersoftware.com/files/BCompareOSX-#{version}.zip"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  livecheck do
    url "https://www.scootersoftware.com/download"
    regex(/BCompareOSX[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  conflicts_with cask: "beyond-compare@4"
  depends_on macos: :big_sur

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
