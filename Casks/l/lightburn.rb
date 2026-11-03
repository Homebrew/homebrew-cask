cask "lightburn" do
  version "2.2.01"
  sha256 "62cea610010c0bc34b7a78269f3da7aacdd3c214da7f46b3ad0c94fb58436412"

  url "https://release.lightburnsoftware.com/LightBurn/Release/LightBurn-v#{version}/LightBurn.V#{version}.dmg"
  name "LightBurn"
  desc "Layout, editing, and control software for laser cutters"
  homepage "https://lightburnsoftware.com/"

  livecheck do
    url "https://release.lightburnsoftware.com/LightBurn/Release/latest/"
    regex(/href=.*?LightBurn[._-]V?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :ventura

  app "LightBurn.app"

  uninstall quit: "com.LightBurnSoftware.LightBurn"

  zap trash: [
        "~/Library/Preferences/com.LightBurnSoftware.LightBurn.plist",
        "~/Library/Preferences/LightBurn",
        "~/Library/Saved Application State/com.LightBurnSoftware.LightBurn.savedState",
      ],
      rmdir: "~/.LightBurn"
end
