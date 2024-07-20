cask "send-anywhere" do
  version "24.3.81156,1709867256"
  sha256 "d10312432e2cc21840eb5afccc33d6c20199b9ae48a166076d0f41b9b8c59f79"

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
