cask "instantview" do
  version "3.24,R0001"
  sha256 "5de29be865d99580100689f8a633ff729909e13fb440e8304e357816dfc225ca"

  url "https://www.siliconmotion.com/downloads/macOS_InstantView_V#{version.csv.first}#{version.csv.second}.dmg"
  name "SiliconMotion InstantView"
  desc "Driver for SM76x with UI"
  homepage "https://www.siliconmotion.com/"

  livecheck do
    url "https://www.siliconmotion.com/downloads/InstantView/Mac/MacAppupdate.V4.xml"
    strategy :sparkle do |item|
      item.short_version.tr(" ", ",")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "macOS InstantView.app"

  uninstall quit: "com.SMI-Inc.InstantView"

  zap trash: [
    "~/Library/Application Support/InstantView",
    "~/Library/Caches/com.SMI-Inc.InstantView",
  ]
end
