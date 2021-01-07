cask "heimatdefender-rebellion" do
  version :latest
  sha256 :no_check

  url "https://www.heimat-defender.de/download/11002/"
  name "Heimat Defender: Rebellion"
  desc "2D platformer game"
  homepage "https://www.heimat-defender.de/en/"

  app "HeimatDefender.app"

  zap trash: [
    "~/Library/Application Support/com.moremountains.corgiengine",
    "~/Library/Logs/Ein Prozent e.V_/HeimatDefender",
    "~/Library/Preferences/com.moremountains.corgiengine.plist",
    "~/Library/Saved Application State/com.moremountains.corgiengine.savedState",
  ]
end
