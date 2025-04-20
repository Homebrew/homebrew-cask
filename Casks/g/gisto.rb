cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.2"
  sha256 arm:   "15b88434d16f923526f576c8bcd605d2a59052580ac5dc03cd795080e9fb7884",
         intel: "c7c939ac30010d6f368e890816fc0f79594fe8e073bdefd23c43b2373883b1f1"

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
