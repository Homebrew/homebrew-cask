cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.3"
  sha256 arm:   "42743bcf73a3f0dc1d05497726a082ea0e10af73009f3c16c33bdafa571b9023",
         intel: "3b0d254e1dd1bf73d17640ce81f9841de58f9ee4d90b2546a295b820675c9e76"

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
