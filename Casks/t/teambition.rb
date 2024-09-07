cask "teambition" do
  version "2.0.3"
  sha256 "3125ea6240885a0e472d407234ad89e64899c6e79c7e0403f9b288ad19dac33e"

  url "https://tongyongxiezuo.oss-cn-zhangjiakou.aliyuncs.com/desktop/Teambition/#{version}/installer/darwin/x64/Teambition-#{version}-mac.dmg",
      verified: "tongyongxiezuo.oss-cn-zhangjiakou.aliyuncs.com/desktop/Teambition/"
  name "Teambition"
  homepage "https://www.teambition.com/"

  livecheck do
    url "https://www.teambition.com/site/client-config"
    regex(/Teambition[._-](\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Teambition.app"

  zap trash: [
    "~/Library/Application Support/Teambition",
    "~/Library/Caches/Teambition",
    "~/Library/Preferences/com.teambition.teambition.plist",
    "~/Library/Saved Application State/com.teambition.teambition.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
