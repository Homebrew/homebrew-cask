cask "status" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "2.34.0,da9032"
    sha256 "a48fd4e8a89b4015e358bd5192cc00d277dc5958ae16f098adbdda00c3953597"
  end
  on_intel do
    version "2.33.2,16fe57"
    sha256 "719c8c499ad4a552eab25b10808250b89774a8e66dbf866278cf94329b5b22d0"
  end

  url "https://github.com/status-im/status-desktop/releases/download/#{version.csv.first}/StatusIm-Desktop-#{version.csv.first}-#{version.csv.second}-#{arch}.dmg",
      verified: "github.com/status-im/status-desktop/releases/download/"
  name "Status"
  desc "Decentralised wallet and messenger"
  homepage "https://status.app/"

  # Not every GitHub release provides a file for both architectures, so we check
  # multiple recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^StatusIm[._-]Desktop[._-]v?(\d+(?:\.\d+)+)[._-](\h+)[._-]#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  no_autobump! because: :requires_manual_review

  app "Status.app"

  zap trash: [
    "~/Library/Application Support/Status",
    "~/Library/Caches/Status",
    "~/Library/Preferences/im.status.Status Desktop.plist",
  ]
end
