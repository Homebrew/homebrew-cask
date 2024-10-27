cask "beeper" do
  arch arm: "arm64", intel: "x64"

  version "3.109.1,240923466rji1i4"
  sha256 arm:   "d5765331838883b68ca8b1725cc26e69c6c2aabc3111c889af9a6b17c3e050a3",
         intel: "43ce287609b172ecefaaa6a140f28b088dae8397d15bbfd8bb7396ac6d980643"

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
