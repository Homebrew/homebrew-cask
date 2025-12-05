cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.32"
  sha256 arm:   "6c438b02c95f6894024f8ea3f6dfe1683cf8a724c85ea05e0b620c86b5eaff14",
         intel: "648e94aeb8b2c55e975295ccc56dd7f773af2dbfe76cc3259216372b90efcac9"

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
