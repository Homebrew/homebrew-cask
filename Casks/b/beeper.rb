cask "beeper" do
  arch arm: "arm64", intel: "x64"

  version "3.110.1,241031sx3gh9lyl"
  sha256 arm:   "632e61ba8ab9a9648cfcace1cfa89f53ad184398f647b70ff777ee0576a834d5",
         intel: "2735ca5517b34be992424e2a45dfe448184bf40bd987f45499db09610ac3a7f6"

  url "https://download.todesktop.com/2003241lzgn20jd/Beeper%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/2003241lzgn20jd/"
  name "Beeper"
  desc "Universal chat app powered by Matrix"
  homepage "https://www.beeper.com/"

  livecheck do
    url "https://download.todesktop.com/2003241lzgn20jd/latest-mac.yml"
    regex(/Beeper\sv?(\d+(?:\.\d+)+)(?:\s-\sBuild\s([a-z\d]+?))?-#{arch}-mac\.zip/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Beeper.app"

  zap trash: [
    "~/Library/Application Support/Beeper",
    "~/Library/Caches/im.beeper",
    "~/Library/Caches/im.beeper.ShipIt",
    "~/Library/Preferences/im.beeper.plist",
    "~/Library/Saved Application State/im.beeper.savedState",
  ]
end
