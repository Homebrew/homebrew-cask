cask "mobirise" do
  version "5.2.0.68"
  sha256 :no_check

  url "https://download.mobirise.com/MobiriseSetup.dmg"
  name "Mobirise"
  desc "No-code website creator"
  homepage "https://mobirise.com/"

  app "Mobirise.app"

  zap trash: [
   "~/Library/Application Support/Mobirise",
   "~/Library/Application Support/Mobirise.com",
   "~/Library/Preferences/com.mobirise.Mobirise.plist",
   "~/Library/Saved Application State/com.mobirise.Mobirise.savedState",
  ]
end
