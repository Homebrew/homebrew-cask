cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.5"
  sha256 arm:   "812e99b0157dd3633db900a9eaa30809aec396f0e1019b2741deff617487de14",
         intel: "f9bf360aa2b4bff73a173bbb3025309611abc14648d2efd5b95affb5bfa7d0bb"

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
