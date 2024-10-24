cask "lightburn" do
  version "1.7.03"
  sha256 "458c71e6ceaf0ed1177f89e9daa3359ef5ecca9d0596db60822f0dd0e0473fff"

  url "https://release.lightburnsoftware.com/LightBurn/Release/LightBurn-v#{version}/LightBurn.V#{version}.dmg"
  name "LightBurn"
  desc "Layout, editing, and control software for laser cutters"
  homepage "https://lightburnsoftware.com/"

  livecheck do
    url "https://release.lightburnsoftware.com/LightBurn/Release/latest/"
    regex(/href=.*?LightBurn[._-]V?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "LightBurn.app"

  zap trash: [
    "~/Library/Preferences/com.LightBurnSoftware.LightBurn.plist",
    "~/Library/Preferences/LightBurn",
    "~/Library/Saved Application State/com.LightBurnSoftware.LightBurn.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
