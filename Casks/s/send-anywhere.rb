cask "send-anywhere" do
  version "24.5.0,1769665926"
  sha256 "5956b2ab9c935d46341e498e009b9b660f4842d91276676bcdf4fa0cef17f98d"

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
