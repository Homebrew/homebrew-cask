cask "beyond-compare" do
  version "4.4.0.25886"
  sha256 "75ecf7d1ad6ca7ee17b8105886ed3b5699f5f805265f4362eda69dee1cb66a34"

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  name "Beyond Compare"
  desc "Compare files and folders"
  homepage "https://www.scootersoftware.com/"

  livecheck do
    url "https://www.scootersoftware.com/download.php?zz=v4changelog"
    strategy :page_match
    regex(/<h2[^>]*>(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "Beyond Compare.app"
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp", target: "bcompare"

  zap trash: [
    "~/Library/Application Support/Beyond Compare",
    "~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*",
    "~/Library/Caches/com.apple.helpd/Generated/Beyond Compare Help*",
    "~/Library/Caches/com.ScooterSoftware.BeyondCompare",
    "~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState",
  ]
end
