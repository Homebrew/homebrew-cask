cask "notion-enhanced" do
  version "2.0.18-1"
  sha256 "e54a37053ed52a42ecbb4ed22a0ce50498ecc1efb3bff5b134099a56a8569309"

  url "https://github.com/notion-enhancer/notion-repackaged/releases/download/v#{version}/Notion-Enhanced-#{version}.dmg",
      verified: "github.com/notion-enhancer"
  name "Notion Enhanced"
  desc "Enhancer/customiser for the all-in-one productivity workspace notion.so"
  homepage "https://notion-enhancer.github.io/"

  app "Notion Enhanced.app"

  zap trash: [
    "~/Library/Logs/Notion Enhanced",
    "~/Library/Preferences/com.github.notion-repackaged.plist",
    "~/Library/Saved Application State/com.github.notion-repackaged.savedState",
  ]
end
