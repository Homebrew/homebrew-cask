cask "notion-enhanced" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  version "2.0.18-1"

  if Hardware::CPU.intel?
    sha256 "e54a37053ed52a42ecbb4ed22a0ce50498ecc1efb3bff5b134099a56a8569309"
  else
    sha256 "5437e9edc439b03e3e11ca1f19a3576c817437b91571dcbd810d364053a8926f"
  end

  url "https://github.com/notion-enhancer/notion-repackaged/releases/download/v#{version}/Notion-Enhanced-#{version}#{arch}.dmg",
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
