cask "mediaelch" do
  version "2.12.0,2024-10-13,80324653"
  sha256 "a49e8f12326cc5c7e55ed0b0b6e951fd27cf704ae2ddc3f24cb860af45a7dad4"

  url "https://github.com/Komet/MediaElch/releases/download/v#{version.csv.first}/MediaElch_macOS_11_or_later_Qt6_#{version.csv.first}_#{version.csv.second}_git-#{version.csv.third}.dmg",
      verified: "github.com/Komet/MediaElch/"
  name "MediaElch"
  desc "Media Manager for Kodi"
  homepage "https://www.kvibes.de/en/mediaelch/"

  livecheck do
    url :url
    regex(/^MediaElch_macOS_.*?[._-]v?(\d+(?:\.\d+)+)_(\d+(?:.\d+)*)_git-(.+?)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "MediaElch.app"

  zap trash: [
    "~/Library/Preferences/com.kvibes.MediaElch.plist",
    "~/Library/Saved Application State/com.kvibes.MediaElch.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
