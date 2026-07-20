cask "synologyassistant" do
  version "7.0.7,50095"
  sha256 "12c67dcf2bd77398941b51183e693fe88d9a79da212652c8a0f0a13682848b5e"

  url "https://global.download.synology.com/download/Utility/Assistant/#{version.tr(",", "-")}/Mac/synology-assistant-#{version.tr(",", "-")}.dmg"
  name "Synology Assistant"
  desc "Tool to manage Synology NAS's across a LAN"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/api/releaseNote/findChangeLog?identify=Assistant&lang=en-us"
    strategy :json do |json|
      json.dig("info", "versions", "", "all_versions")&.map { |item| item["version"]&.tr("-", ",") }
    end
  end

  depends_on :macos

  app "SynologyAssistant.app"

  zap trash: "~/Library/Preferences/com.synology.DSAssistant.plist"

  caveats do
    requires_rosetta
  end
end
