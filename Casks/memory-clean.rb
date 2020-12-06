cask "memory-clean" do
  version :latest
  sha256 :no_check

  url "https://fiplab.com/app-download/Memory_Clean_3.zip"
  name "Memory Clean 3"
  desc "Memory Cleaning Utility"
  homepage "https://fiplab.com/apps/memory-clean-3-for-mac"

  app "Memory Clean 3.app"

  uninstall quit: [
    "com.fiplab.flcore",
    "com.fiplab.memoryclean3",
    "com.fiplab.mc3loginhelper",
  ]

  zap trash: [
    "~/Library/Caches/com.fiplab.memoryclean3",
    "~/Library/Application Support/Memory Clean 3",
    "~/Library/Containers/com.fiplab.mc3loginhelper",
    "~/Library/Preferences/com.fiplab.memoryclean3.plist",
    "~/Library/Application Support/com.fiplab.memoryclean3",
  ]
end
