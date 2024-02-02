cask "beyond-compare" do
  version "4.4.7.28397"
  sha256 "a9ba4cea125bbfe00fa3e79de39937197ae5d479d94710f5b93da5bda377a0ce"

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  livecheck do
    url "https://www.scootersoftware.com/download.php?zz=v4changelog"
    regex(/BCompareOSX[_.-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/beyond-compare-beta"

  app "Beyond Compare.app"
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"

  zap trash: [
    "~/Library/Application Support/Beyond Compare",
    "~/Library/Caches/com.apple.helpd/Generated/Beyond Compare Help*",
    "~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*",
    "~/Library/Caches/com.ScooterSoftware.BeyondCompare",
    "~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState",
  ]
end
