cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.39"
  sha256 arm:   "d41243f2a3de55be1b50ae49ec4702448ed0987ea400cd55f8b10e37b03d8aee",
         intel: "06ef94cde3794d0d9aa8f4b41173def47ef8ee605c46b6e863c9ac38c4a2c03d"

  url "https://github.com/agata/dl.biscuit/releases/download/#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
