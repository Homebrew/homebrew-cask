cask "clone-hero" do
  version "0.23.2.2"
  sha256 "ae8102f503596822c45a2b3c12e48e218473f1525772bbe824139ce48a23a5ea"

  url "https://dl.clonehero.net/clonehero-v.#{version.sub(/^\d+\./, "")}/clonehero-mac.dmg"
  appcast "https://clonehero.net/"
  name "Clone Hero"
  homepage "https://clonehero.net/"

  app "Clone Hero.app"

  zap trash: [
    "~/Library/Application Support/com.srylain.CloneHero",
    "~/Library/Preferences/com.srylain.CloneHero.plist",
  ]
end
