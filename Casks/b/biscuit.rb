cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.34"
  sha256 arm:   "37a03ff8c9b123966fb25424c5e36cfb6ae4b048fb8d04f502391ec833dd6965",
         intel: "f19a4f9c1265d339331ebd113f5bb3b82578509b2b6cd12763869df9832e2a53"

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
