cask "lightburn" do
  version "2.2.00"
  sha256 "de599bdbbcc3ca510250616bf2a37f7550e161df7499245d389860292537757f"

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
