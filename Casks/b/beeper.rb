cask "beeper" do
  arch arm: "arm64", intel: "x64"

  version "3.108.3,2407188w36frwla"
  sha256 arm:   "51495143c1ebb499266bef8005e41fe8829f65e5baced6afa4da530cbd96d2d9",
         intel: "c03d4c5a2bec94275c0f1916468f708b94c2f1cd3ed1a31b2869dbabb6a56765"

  url "https://download.todesktop.com/2003241lzgn20jd/Beeper%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/2003241lzgn20jd/"
  name "Beeper"
  desc "Universal chat app powered by Matrix"
  homepage "https://www.beeper.com/"

  livecheck do
    url "https://download.todesktop.com/2003241lzgn20jd/latest-mac.yml"
    regex(/Beeper\sv?(\d+(?:\.\d+)+)(?:\s-\sBuild\s([a-z\d]+?))?-#{arch}-mac\.zip/)
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
