cask "synology-chat" do
  version "1.2.4,0235"
  sha256 "a040f79c5b65fad84b271f21be5fdc4805afc46d391ebca790e9f906fc710f89"

  url "https://global.download.synology.com/download/Utility/ChatClient/#{version.tr(",", "-")}/Mac/Installer/Synology%20Chat%20Client-#{version.tr(",", "-")}.dmg"
  name "Synology Chat"
  desc "Messaging service that runs on Synology NAS"
  homepage "https://www.synology.com/en-us/dsm/feature/chat"

  livecheck do
    url "https://www.synology.com/api/releaseNote/findChangeLog?identify=ChatClient&lang=en-us"
    strategy :json do |json|
      json.dig("info", "versions", "", "all_versions")&.map { |item| item["version"]&.tr("-", ",") }
    end
  end

  depends_on :macos

  app "Synology Chat.app"

  zap trash: "~/Library/Application Support/Synology Chat"
end
