cask "status" do
  version "2.39.3,211c45"
  sha256 "94cd23d2b8e3a6dfd4f31a13f4e6561281a0eb3368c787b4ae4a30a5e847f6cb"

  url "https://github.com/status-im/status-desktop/releases/download/#{version.csv.first}/StatusIm-Desktop-#{version.csv.first}-#{version.csv.second}-aarch64.dmg"
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
  depends_on macos: :sonoma

  app "Status.app"

  zap trash: [
    "~/Library/Application Support/Status",
    "~/Library/Caches/Status",
    "~/Library/Preferences/com.status-app.Status Desktop.plist",
    "~/Library/Preferences/im.status.Status Desktop.plist",
  ]
end
