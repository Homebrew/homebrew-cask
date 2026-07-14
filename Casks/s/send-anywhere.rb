cask "send-anywhere" do
  version "24.6.1,1783999839"
  sha256 "d8a490fb48d2edcb91c9783f95648f2063262403a2a293b28617b068b8d08807"

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

  depends_on :macos

  app "Send Anywhere.app"

  zap trash: [
    "~/Library/Application Support/Send Anywhere",
    "~/Library/Logs/Send Anywhere",
    "~/Library/Preferences/com.estmob.osx.sendanywhere.plist",
  ]
end
