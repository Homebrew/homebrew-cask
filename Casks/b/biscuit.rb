cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.33"
  sha256 arm:   "999bcfa3edad7bc16f84573c2ff75342615d031f264a47868375d403445c208f",
         intel: "b3a65f40a7a9ed048cc293a87bd4baddd882154bd3a421aed94df688391e4c49"

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
