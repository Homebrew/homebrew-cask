cask "status" do
  version "2.36.1,ad089d"
  sha256 "7d87e5bb5e90a14342eb913dfb180fcac0ff625294087130c96c8bc7a036a4ec"

  url "https://github.com/status-im/status-desktop/releases/download/#{version.csv.first}/StatusIm-Desktop-#{version.csv.first}-#{version.csv.second}-aarch64.dmg",
      verified: "github.com/status-im/status-desktop/releases/download/"
  name "Status"
  desc "Decentralised wallet and messenger"
  homepage "https://status.app/"

  livecheck do
    url :url
    regex(/^StatusIm[._-]Desktop[._-]v?(\d+(?:\.\d+)+)[._-](\h+)[._-]aarch64\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Status.app"

  zap trash: [
    "~/Library/Application Support/Status",
    "~/Library/Caches/Status",
    "~/Library/Preferences/im.status.Status Desktop.plist",
  ]
end
