cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.4"
  sha256 arm:   "bce6b09e055d5ccb36eb64bd56a7aed81ae34acf09163fb6521a981c1ef7a8ea",
         intel: "a5450f54d78a7e3e855500bcbfacdccb9dcca64eb31c1d312c0c3727500e5ce1"

  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_#{arch}.dmg",
      verified: "github.com/Gisto/Gisto/"
  name "Gisto"
  desc "Snippets management desktop application"
  homepage "https://www.gisto.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
