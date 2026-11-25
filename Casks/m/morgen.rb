cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "4.5.0,261125vlh0s0saz"
  sha256 arm:   "5d3354f1530e7652be2e5999e2d25a0d00ca3dbae6b8806b605535003c55c1a8",
         intel: "847f82acf7ac1dab4489e2e2772ec06abb1a63facbee1ead43fa227f04730390"

  url "https://download.todesktop.com/210203cqcj00tw1/Morgen%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg"
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

  auto_updates true
  depends_on macos: :monterey

  app "Morgen.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.todesktop.210203cqcj00tw1.sfl*",
    "~/Library/Application Support/Morgen",
    "~/Library/Preferences/com.todesktop.210203cqcj00tw1.plist",
    "~/Library/Saved Application State/com.todesktop.210203cqcj00tw1.savedState",
  ]
end
