cask "blurscreen" do
  version "1.0,9"
  sha256 :no_check

  url "https://www.blurscreen.app/assets/BlurScreen-v2.pkg"
  name "blurscreen"
  desc "Blur any part of your screen"
  homepage "https://www.blurscreen.app/"

  livecheck do
    url "https://www.blurscreen.app/update/mac/blurscreen.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "BlurScreen-v2.pkg"

  uninstall quit:    "com.sanskar.blurscreen",
            pkgutil: "com.sanskar.blurscreen",
            delete:  [
              "/Applications/BlurScreen.app",
            ]

  zap trash: [
    "~/Library/Caches/com.sanskar.blurscreen",
    "~/Library/HTTPStorages/com.sanskar.blurscreen",
    "~/Library/Preferences/com.sanskar.blurscreen.plist",
  ]
end
