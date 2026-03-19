cask "instantview" do
  version "3.24,R0004"
  sha256 "968cd5ca428ad5e754425c3134acbf1b230a8ec41a5de47d5d5a1abbbd81c218"

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
