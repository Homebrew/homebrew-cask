cask "mobirise" do
  version "5.6.0"
  sha256 :no_check

  url "https://download.mobirise.com/MobiriseSetup.dmg"
  name "Mobirise"
  desc "No-code website creator"
  homepage "https://mobirise.com/"

  livecheck do
    url "https://mobirise.com/history.html"
    regex(/>\s*Mobirise\s+v?(\d+(?:\.\d+)+)/i)
  end

  app "Mobirise.app"

  zap trash: [
    "~/Library/Application Support/Mobirise",
    "~/Library/Application Support/Mobirise.com",
    "~/Library/Preferences/com.mobirise.Mobirise.plist",
    "~/Library/Saved Application State/com.mobirise.Mobirise.savedState",
  ]
end
