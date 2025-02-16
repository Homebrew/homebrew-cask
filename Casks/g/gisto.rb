cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.6"
  sha256 arm:   "b1f7d77f51f3856e241f18363e2f070a309a2eb35893268b61039ed506b7ce2b",
         intel: "3e2ba6e09ee213601a3ecb2d4dea3b1383384b5f3e0d9cd2467a06f7d3540bd2"

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
