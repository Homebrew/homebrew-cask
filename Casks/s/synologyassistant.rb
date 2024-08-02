cask "synologyassistant" do
  version "7.0.5,50070"
  sha256 "760e70deb917f580598eb83b2e3f8185cdd1b7591d70aca04c69e20f240fdf41"

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

  caveats do
    requires_rosetta
  end
end
