cask "prompthub" do
  arch arm: "arm64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "7300ba3206596c8b6674d97c3a19e9949c27d7cc4e4e0596eff58341de7b7d57",
         intel: "8544b39c132da322de96cb4b186760de2ec308c0c686c63a5899a36621896a5b"

  url "https://github.com/legeling/PromptHub/releases/download/v#{version}/PromptHub-#{version}-#{arch}.dmg",
      verified: "github.com/legeling/PromptHub/"
  name "PromptHub"
  desc "Open-source, local-first AI prompt management tool"
  homepage "https://prompthub-app.vercel.app/"

  livecheck do
    url :url
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "PromptHub.app"

  zap trash: [
    "~/Library/Application Support/prompthub",
    "~/Library/Logs/prompthub",
    "~/Library/Preferences/com.legeling.prompthub.plist",
    "~/Library/Saved Application State/com.legeling.prompthub.savedState",
  ]
end
