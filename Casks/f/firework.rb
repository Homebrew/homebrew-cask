cask "firework" do
  version "3.39.13"
  sha256 :no_check

  url "https://cdn-firework.com/fw/download/packages/FireworkInstaller.dmg",
      verified: "cdn-firework.com/"
  name "firework"
  desc "Easiest access to web sites and applications"
  homepage "https://firework.cloud/"

  app "Firework.app"

  zap trash: [
    "~/Library/Application Support/Crash Reporter/Firework_61109777-DE87-5166-AC98-88DCB257BB59.plist",
    "~/Library/Application Support/Firework",
    "~/Library/Caches/Firework",
    "~/Library/Preferences/cloud.firework.plist",
    "~/Library/Saved Application State/cloud.firework.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
