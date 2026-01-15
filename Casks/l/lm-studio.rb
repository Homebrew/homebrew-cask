cask "lm-studio" do
  version "0.3.39,1"
  sha256 "0374df6c5af81fb34d5e8f5eed1a37324749fecbc5e8fc9e413df8567300b362"

  url "https://installers.lmstudio.ai/darwin/arm64/#{version.tr(",", "-")}/LM-Studio-#{version.tr(",", "-")}-arm64.dmg"
  name "LM Studio"
  desc "Discover, download, and run local LLMs"
  homepage "https://lmstudio.ai/"

  livecheck do
    url "https://versions-prod.lmstudio.ai/update/darwin/arm64/#{version.csv.first}"
    strategy :json do |json|
      version = json["version"]
      build = json["build"]
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
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
