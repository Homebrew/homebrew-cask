cask "memory-clean-3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.0.24,10.24"
  sha256 :no_check

  url "https://fiplab.com/app-download/Memory_Clean_3.zip"
  name "Memory Clean 3"
  desc "Memory cleaning utility"
  homepage "https://fiplab.com/apps/memory-clean-3-for-mac"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Memory Clean 3.app"

  uninstall quit: [
    "com.fiplab.flcore",
    "com.fiplab.memoryclean3",
    "com.fiplab.mc3loginhelper",
  ]

  zap trash: [
    "~/Library/Application Support/com.fiplab.memoryclean3",
    "~/Library/Application Support/Memory Clean 3",
    "~/Library/Caches/com.fiplab.memoryclean3",
    "~/Library/Containers/com.fiplab.mc3loginhelper",
    "~/Library/Preferences/com.fiplab.memoryclean3.plist",
  ]
end
