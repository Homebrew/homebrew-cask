cask "biscuit" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "0c26983ee3feffb4630263139ea99833f752e59c980f653b2a61f56f0b5ffe0d",
         intel: "5a1755f11943cb5d48d1728be5084ad80a5115d2af25e8431a1d11d965e79a96"

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
