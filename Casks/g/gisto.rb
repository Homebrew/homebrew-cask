cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "55d98e5a5c1830bfc89e9e1518042a72f54e5ec1aaabff70a9769abc7019ca4c",
         intel: "fe9863e14383c434efb9e7a7de3a99667cfad1cecef8bc78512ad029b466ece4"

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
