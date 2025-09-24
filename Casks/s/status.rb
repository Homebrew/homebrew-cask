cask "status" do
  version "2.35.1,748cd6"
  sha256 "f8c8fe80e16e28d21147295e0a39f3dbf4134a6ad74103bcf4da2e73549909f9"

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
  depends_on macos: ">= :ventura"

  app "Status.app"

  zap trash: [
    "~/Library/Application Support/Status",
    "~/Library/Caches/Status",
    "~/Library/Preferences/im.status.Status Desktop.plist",
  ]
end
