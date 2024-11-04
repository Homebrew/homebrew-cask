cask "lm-studio" do
  version "0.3.5"
  sha256 "5cf69721677f5e5de2e5d4bee5663d384201f4f3567b9cbd0b5330a1930386dd"

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

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :high_sierra"

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
