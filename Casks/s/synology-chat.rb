cask "synology-chat" do
  version "1.2.3,0232"
  sha256 "7286331883107347ff675fe6cb76c3e2233a1af75f0d2903391a3c3da97dedb9"

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

  app "Synology Chat.app"

  zap trash: "~/Library/Application Support/Synology Chat"

  caveats do
    requires_rosetta
  end
end
