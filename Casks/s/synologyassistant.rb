cask "synologyassistant" do
  version "7.0.5,50070"
  sha256 "760e70deb917f580598eb83b2e3f8185cdd1b7591d70aca04c69e20f240fdf41"

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

  app "SynologyAssistant.app"

  zap trash: "~/Library/Preferences/com.synology.DSAssistant.plist"

  caveats do
    requires_rosetta
  end
end
