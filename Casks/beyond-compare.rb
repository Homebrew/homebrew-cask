cask "beyond-compare" do
  version "4.4.2.26348"
  sha256 "5ea9ad5b6106c8598ecc2a285dcccfde6b4c3795154020b1ec3267543973024a"

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  livecheck do
    url "https://www.scootersoftware.com/download.php?zz=v4changelog"
    regex(/<h2[^>]*>(\d+(?:\.\d+)+)/i)
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
