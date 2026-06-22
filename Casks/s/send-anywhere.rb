cask "send-anywhere" do
  version "24.6.0,1781159432"
  sha256 "7da492726a9e33eb011d0412cab4eddb8a2ce6967f87d85741c38b0701440eb0"

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
