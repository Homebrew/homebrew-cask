cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.5"
  sha256 arm:   "750fbbeec2ae2f11131e6e7d04733e75ee2c2792c084b98c527d78c4ac618926",
         intel: "e3071c386172100a88270f6247ea007e7ab991a5cc55016d3a61007debc5e84a"

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
