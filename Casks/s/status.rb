cask "status" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "2.34.3,c562f2"
    sha256 "590c06302535d362b51a614444a2141d9e447bf838a728d1235ac2d20ef8f81f"

    url "https://github.com/status-im/status-desktop/releases/download/#{version.csv.first}/StatusIm-Desktop-#{version.csv.first}-#{version.csv.second}-#{arch}.dmg",
        verified: "github.com/status-im/status-desktop/releases/download/"
  end
  on_intel do
    version "2.32.1,aab802"
    sha256 "0335a0b16caf61354d2413d72a51100fca395f1c0c787db3b2890c7674a5a02f"

    url "https://github.com/status-im/status-desktop/releases/download/#{version.csv.first}/StatusIm-Desktop-v#{version.csv.first}-#{version.csv.second}-#{arch}.dmg",
        verified: "github.com/status-im/status-desktop/releases/download/"
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

  depends_on macos: ">= :monterey"

  app "Status.app"

  zap trash: [
    "~/Library/Application Support/Status",
    "~/Library/Caches/Status",
    "~/Library/Preferences/im.status.Status Desktop.plist",
  ]
end
