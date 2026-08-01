cask "lm-studio-bionic" do
  version "1.0.4,9"
  sha256 "60891bb8318f669d40f66b4ac98e509d3ee1e373aba572b5c92b68859785294b"

  url "https://bionic-installers.lmstudio.ai/darwin/arm64/#{version.tr(",", "-")}/Bionic-#{version.tr(",", "-")}-arm64.dmg"
  name "LM Studio Bionic"
  desc "AI agent for working with open models"
  homepage "https://lmstudio.ai/"

  livecheck do
    url "https://versions-prod.lmstudio.ai/update/bionic/darwin/arm64"
    strategy :json do |json|
      version = json["version"]
      build = json["build"]
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Bionic.app"

  uninstall quit: [
    "ai.elementlabs.bionic",
    "ai.elementlabs.bionic.helper",
  ]

  zap trash: [
    "~/Library/Application Support/Bionic",
    "~/Library/Caches/ai.elementlabs.bionic",
    "~/Library/Caches/ai.elementlabs.bionic.ShipIt",
    "~/Library/HTTPStorages/ai.elementlabs.bionic",
    "~/Library/Logs/Bionic",
    "~/Library/Preferences/ai.elementlabs.bionic.plist",
    "~/Library/Saved Application State/ai.elementlabs.bionic.savedState",
  ]
end
