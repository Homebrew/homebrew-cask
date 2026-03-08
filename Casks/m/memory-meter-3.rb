cask "memory-meter-3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.0.81"
  sha256 "b8113adf1b65656eb933e76cda601ac25f1ada6208ca49b641e9da266857850d"

  url "https://fiplab.com/updates/memorymeter3/Memory-Meter-3-#{version}.zip"
  name "Memory Meter 3"
  desc "Memory cleaning utility"
  homepage "https://fiplab.com/apps/memory-clean-3-for-mac"

  livecheck do
    url "https://fiplab.com/updates/memorymeter3/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Memory Meter 3.app"

  uninstall quit: [
    "com.fiplab.flcore",
    "com.fiplab.mc3loginhelper",
    "com.fiplab.memoryclean3",
  ]

  zap trash: [
    "~/Library/Application Support/com.fiplab.memoryclean3",
    "~/Library/Application Support/Memory Clean 3",
    "~/Library/Caches/com.fiplab.memoryclean3",
    "~/Library/Containers/com.fiplab.mc3loginhelper",
    "~/Library/Preferences/com.fiplab.memoryclean3.plist",
  ]
end
