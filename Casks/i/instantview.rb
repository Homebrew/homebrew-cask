cask "instantview" do
  version "3.22,R0002"
  sha256 "3dd817f730ab558b4d6ee38260a568f5c7a0086fd563b4177ad8af56c525b5b8"

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
