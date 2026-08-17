cask "lm-studio-bionic" do
  version "1.0.8,9"
  sha256 "5194a5cdcc56957eb5344f9737f434fb1ea5556b34aa3274110df04f9d9f87e8"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.elementlabs.bionic.sfl*",
    "~/Library/Caches/ai.elementlabs.bionic",
    "~/Library/Caches/ai.elementlabs.bionic.ShipIt",
    "~/Library/HTTPStorages/ai.elementlabs.bionic",
    "~/Library/Logs/Bionic",
    "~/Library/Preferences/ai.elementlabs.bionic.plist",
    "~/Library/Saved Application State/ai.elementlabs.bionic.savedState",
  ]
end
