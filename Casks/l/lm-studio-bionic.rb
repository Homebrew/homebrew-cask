cask "lm-studio-bionic" do
  version "1.1.6,3"
  sha256 "f38ca15438f62a6cb839a48d4b199df8c358d2d30616d48939f3445189a55095"

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
