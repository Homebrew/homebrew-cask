cask "synologyassistant" do
  version "7.0.4,50051"
  sha256 "6b578266e0d43218bc35bbed112e7761bd7e682e432b8d5f53fb90c573aa3f4f"

  url "https://global.download.synology.com/download/Utility/Assistant/#{version.csv.first}-#{version.csv.second}/Mac/synology-assistant-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Synology Assistant"
  desc "Tool to manage Synology NAS's across a LAN"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/Assistant"
    regex(/Version:\s+(\d+(?:\.\d+)+)-(\d+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "SynologyAssistant.app"

  zap trash: "~/Library/Preferences/com.synology.DSAssistant.plist"
end
