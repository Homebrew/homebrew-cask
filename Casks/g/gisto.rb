cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "a342741f9dbeb0be3e8e7b4469984f75500f5689784a485d39f15aad428befaf",
         intel: "e0ee61b7da9cc22765e0b36d923dac655c9cd4433ca6731e366b000b587f1aec"

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
