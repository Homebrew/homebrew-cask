cask "ethui" do
  version "1.27.0"
  sha256 "7a5eb15dfc66556ee6f2ec0480605db587ef74b6a4f9e9e028df73d296b90623"

  url "https://github.com/ethui/ethui/releases/download/v#{version}/ethui_#{version}_universal.dmg",
      verified: "github.com/ethui/ethui/"
  name "ethui"
  desc "Ethereum development toolkit with wallet and anvil support"
  homepage "https://ethui.dev/"

  app "ethui.app"

  zap trash: [
    "~/Library/Application Support/ethui",
    "~/Library/Caches/ethui",
    "~/Library/Saved Application State/dev.ethui.savedState",
  ]
end
