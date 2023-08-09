cask "beyond-compare" do
  version "4.4.6.27483"
  sha256 "854cc97d481f0aebc1e800c76ec8261175e09ed9b4d613e77d28f097b8c8ef47"

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  livecheck do
    url "https://www.scootersoftware.com/download.php?zz=v4changelog"
    regex(/BCompareOSX[_.-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true

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
