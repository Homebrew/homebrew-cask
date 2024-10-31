cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "3.5.11,24103064ietgp9k"
  sha256 arm:   "cdd245d0367af2ce197f01ce3a89d1e79acf02c8bcfc855efe02fe4dfb9fe7c9",
         intel: "a03ebb49ac48eb993b670f5d16611bd3e5a56116e7c38b6c8f9502f01036e47b"

  url "https://download.todesktop.com/210203cqcj00tw1/Morgen%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg",
      verified: "download.todesktop.com/210203cqcj00tw1/"
  name "Morgen"
  desc "All-in-one calendars, tasks and scheduler"
  homepage "https://morgen.so/"

  livecheck do
    url "https://download.todesktop.com/210203cqcj00tw1/latest-mac.yml"
    regex(/Morgen\s+v?(\d+(?:\.\d+)+).*?(?:Build\s+)([a-z0-9]+)[._-]#{arch}\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Morgen.app"

  zap trash: [
    "~/Library/Application Support/Morgen",
    "~/Library/Preferences/com.todesktop.210203cqcj00tw1.plist",
    "~/Library/Saved Application State/com.todesktop.210203cqcj00tw1.savedState",
  ]
end
