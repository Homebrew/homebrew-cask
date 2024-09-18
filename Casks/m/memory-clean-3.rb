cask "memory-clean-3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.0.24"
  sha256 :no_check

  url "https://fiplab.com/app-download/Memory_Clean_3.zip"
  name "Memory Clean 3"
  desc "Memory cleaning utility"
  homepage "https://fiplab.com/apps/memory-clean-3-for-mac"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/386e625b-eaba-4248-8398-1802cf24cbb2"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Memory Clean 3.app"

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
