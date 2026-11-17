cask "slite" do
  arch arm: "arm64", intel: "x64"

  version "1.6.3,261117sr7osgrin"
  sha256 arm:   "ffff0089477de66d918c7936ec6450ffd3b34cb5a67c2e5446898e469a1f18c9",
         intel: "42a31b62c2d5bff7cc2e72f77c78ea24ca52c1af954d89de338368f8049be042"

  url "https://download.todesktop.com/20062929x31pwfi/Slite%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip"
  name "Slite"
  desc "Team communication and collaboration software"
  homepage "https://slite.com/"

  livecheck do
    url "https://download.todesktop.com/20062929x31pwfi/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  depends_on macos: :ventura

  app "Slite.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.slite.desktop.sfl*",
    "~/Library/Application Support/Slite",
    "~/Library/Caches/com.slite.desktop",
    "~/Library/Caches/com.slite.desktop.ShipIt",
    "~/Library/Preferences/com.slite.desktop.helper.plist",
    "~/Library/Preferences/com.slite.desktop.plist",
    "~/Library/Saved Application State/com.slite.desktop.savedState",
  ]
end
