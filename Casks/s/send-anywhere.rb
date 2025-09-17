cask "send-anywhere" do
  version "24.4.1,1758092363"
  sha256 "696d5f93b942faa8f3f52ba537d51d1fbddb7041fc99cd24b3181049e21e61c8"

  url "https://update.send-anywhere.com/osx_downloads/SendAnywhere_#{version.csv.second}.dmg"
  name "Send Anywhere"
  desc "File sharing app"
  homepage "https://send-anywhere.com/"

  livecheck do
    url "https://update.send-anywhere.com/osx_downloads/latest-mac.yml"
    regex(/SendAnywhere[._-](\d+)\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  app "Send Anywhere.app"

  zap trash: [
    "~/Library/Application Support/Send Anywhere",
    "~/Library/Logs/Send Anywhere",
    "~/Library/Preferences/com.estmob.osx.sendanywhere.plist",
  ]

  caveats do
    requires_rosetta
  end
end
