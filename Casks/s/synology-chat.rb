cask "synology-chat" do
  version "1.2.5,0240"
  sha256 "2287071016187245cc140f466233a218a0d6e4727bc2c7bc6b1525bb3572392e"

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

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/synochat.sfl*",
    "~/Library/Application Support/synochat-client",
    "~/Library/Application Support/Synology Chat",
    "~/Library/Preferences/synochat.plist",
  ]
end
