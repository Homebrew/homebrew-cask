cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.28"
  sha256 arm:   "0f4a6b23d818cefc2a79b96ea769811d263f186e9f301486096610bd5dd908d1",
         intel: "35939b0cb19b803ce636a8e886631892afd51cbe952dfbe26286624342be4524"

  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
