cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.7"
  sha256 arm:   "98d363140b3e147f355525124e15a31cea471009987adabd73ed398dfc205fb9",
         intel: "a0270aacfe72431e1e0354ddb496bd495daae28ca896bc2663c05a7777753aa9"

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
