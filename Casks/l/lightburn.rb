cask "lightburn" do
  version "2.1.04"
  sha256 "d888bced55faa15dadd687e15c8d1a51168ba8011ef21ac84b0172ea05e12c3a"

  url "https://release.lightburnsoftware.com/LightBurn/Release/LightBurn-v#{version}/LightBurn.V#{version}.dmg"
  name "LightBurn"
  desc "Layout, editing, and control software for laser cutters"
  homepage "https://lightburnsoftware.com/"

  livecheck do
    url "https://release.lightburnsoftware.com/LightBurn/Release/latest/"
    regex(/href=.*?LightBurn[._-]V?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :big_sur

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
