cask "lm-studio" do
  version "0.3.5"
  sha256 "e5f7d0af329490c22a15df68c55f31d6f8623ad32acd51f3f3deee19e5cee1cf"

  url "https://releases.lmstudio.ai/darwin/arm64/#{version}/LM-Studio-#{version}-arm64.dmg"
  name "LM Studio"
  desc "Discover, download, and run local LLMs"
  homepage "https://lmstudio.ai/"

  livecheck do
    url "https://versions-prod.lmstudio.ai/darwin/arm64/#{version}"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64

  app "LM Studio.app"

  uninstall quit: [
    "ai.elementlabs.lmstudio",
    "ai.elementlabs.lmstudio.helper",
  ]

  zap trash: [
    "~/Library/Application Support/LM Studio",
    "~/Library/Caches/ai.elementlabs.lmstudio",
    "~/Library/Caches/ai.elementlabs.lmstudio.ShipIt",
    "~/Library/HTTPStorages/ai.elementlabs.lmstudio",
    "~/Library/Logs/LM Studio",
    "~/Library/Preferences/ai.elementlabs.lmstudio.plist",
    "~/Library/Saved Application State/ai.elementlabs.lmstudio.savedState",
  ]
end
