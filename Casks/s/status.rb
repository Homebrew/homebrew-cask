cask "status" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.33.2,16fe57"
  sha256 arm:   "ee88d0517635dbb5d9469d9c84333215d7b3ece0f4404100794f55fd7c7bf649",
         intel: "719c8c499ad4a552eab25b10808250b89774a8e66dbf866278cf94329b5b22d0"

  url "https://github.com/status-im/status-desktop/releases/download/#{version.csv.first}/StatusIm-Desktop-#{version.csv.first}-#{version.csv.second}-#{arch}.dmg",
      verified: "github.com/status-im/status-desktop/releases/download/"
  name "Status"
  desc "Decentralised wallet and messenger"
  homepage "https://status.app/"

  livecheck do
    url :url
    regex(/^StatusIm[._-]Desktop[._-]v?(\d+(?:\.\d+)+)[._-](\h+)[._-]#{arch}\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "Status.app"

  zap trash: [
    "~/Library/Application Support/Status",
    "~/Library/Caches/Status",
    "~/Library/Preferences/im.status.Status Desktop.plist",
  ]
end
