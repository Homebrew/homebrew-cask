cask "lightburn" do
  version "2.0.05"
  sha256 "913068b92c598c29f1b8784f7fef6f6120aa61a19f44ce1edc5bdb61fae3e09c"

  url "https://release.lightburnsoftware.com/LightBurn/Release/LightBurn-v#{version}/LightBurn.V#{version}.dmg"
  name "LightBurn"
  desc "Layout, editing, and control software for laser cutters"
  homepage "https://lightburnsoftware.com/"

  livecheck do
    url "https://release.lightburnsoftware.com/LightBurn/Release/latest/"
    regex(/href=.*?LightBurn[._-]V?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

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
