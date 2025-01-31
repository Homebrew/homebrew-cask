cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.2"
  sha256 arm:   "4b31aa167bc0031e2ad8cf910ccdfe71799daf5e9a130a9c8844d4bedc5b2a4b",
         intel: "cf8657e42a16fe43877131cf1c61784a1d0c6eac9a25ce034fda747227f8ac17"

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
