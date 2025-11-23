cask "synologyassistant" do
  version "7.0.6,50085"
  sha256 "b2bf2d6f1cb711cb136d6aba7927cd4c4efd9ab312a8556017c63702f1f856ad"

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
