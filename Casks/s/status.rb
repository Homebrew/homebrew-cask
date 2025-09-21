cask "status" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "2.35.1,748cd6"
    sha256 "f8c8fe80e16e28d21147295e0a39f3dbf4134a6ad74103bcf4da2e73549909f9"

    url "https://github.com/status-im/status-desktop/releases/download/#{version.csv.first}/StatusIm-Desktop-#{version.csv.first}-#{version.csv.second}-#{arch}.dmg",
        verified: "github.com/status-im/status-desktop/releases/download/"

    depends_on macos: ">= :ventura"
  end
  on_intel do
    version "2.32.1,aab802"
    sha256 "0335a0b16caf61354d2413d72a51100fca395f1c0c787db3b2890c7674a5a02f"

    url "https://github.com/status-im/status-desktop/releases/download/#{version.csv.first}/StatusIm-Desktop-v#{version.csv.first}-#{version.csv.second}-#{arch}.dmg",
        verified: "github.com/status-im/status-desktop/releases/download/"

    depends_on macos: ">= :monterey"
  end

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

  app "Status.app"

  zap trash: [
    "~/Library/Application Support/Status",
    "~/Library/Caches/Status",
    "~/Library/Preferences/im.status.Status Desktop.plist",
  ]
end
