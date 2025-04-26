cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.3"
  sha256 arm:   "5d73613115973df24faa4a2420e978fc8d6d50ddc45aac11a2f1a0f94d28e92b",
         intel: "edd26920d28aea15fb60f8b30a730a52be703d033ede67e993bce9b46e10880c"

  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_#{arch}.dmg",
      verified: "github.com/Gisto/Gisto/"
  name "Gisto"
  desc "Snippets management desktop application"
  homepage "https://www.gisto.org/"

  app "Gisto.app"

  zap trash: [
    "~/Library/Application Support/Gisto",
    "~/Library/Caches/com.gistoapp.gisto2",
    "~/Library/Logs/Gisto",
    "~/Library/Preferences/com.gistoapp.gisto2.helper.plist",
    "~/Library/Preferences/com.gistoapp.gisto2.plist",
    "~/Library/Saved Application State/com.gistoapp.gisto2.savedState",
  ]
end
