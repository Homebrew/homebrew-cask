cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "4.1.2,2611018532ncsjy"
  sha256 arm:   "413e9cf541c63d3390c8fab03f1f7fdf63cede83a63269a07e6c68043eb31787",
         intel: "979f6ef04138e3e5a0b8190f8238ac28c4523acf280f4dadb6223bf42e85417a"

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
