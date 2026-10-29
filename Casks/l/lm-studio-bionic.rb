cask "lm-studio-bionic" do
  version "1.1.10,8"
  sha256 "4b8da5c35097ed5cffb153d0ac2a1788f58e306a134f1139535f13819a71d78f"

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
    "~/Library/Application Scripts/D65G88RHWN.ai.elementlabs.bionic.office-document-preview",
    "~/Library/Application Support/Bionic",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.elementlabs.bionic.sfl*",
    "~/Library/Caches/ai.elementlabs.bionic",
    "~/Library/Caches/ai.elementlabs.bionic.ShipIt",
    "~/Library/Group Containers/D65G88RHWN.ai.elementlabs.bionic.office-document-preview",
    "~/Library/HTTPStorages/ai.elementlabs.bionic",
    "~/Library/Logs/Bionic",
    "~/Library/Preferences/ai.elementlabs.bionic.plist",
    "~/Library/Saved Application State/ai.elementlabs.bionic.savedState",
  ]
end
