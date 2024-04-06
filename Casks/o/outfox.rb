cask "outfox" do
  version "0.5.0-pre042,20231224"
  sha256 "5c6f772d17e972c7836174af6831a3257619bff4a5c681dbb1ac05cad6180055"

  url "https://github.com/TeamRizu/OutFox/releases/download/OF5.0.0-042/OutFox-alpha-#{version.csv.first}-MacOS-universal-date-#{version.csv.second}.dmg",
      verified: "github.com/TeamRizu/OutFox/"
  name "OutFox"
  desc "Extensible rhythm game engine based on StepMania"
  homepage "https://projectoutfox.com/"

  livecheck do
    url :url
    regex(/OutFox[._-]alpha[._-](\d+(?:\.\d+)+[._-]pre\d+)[._-]MacOS[._-]universal[._-]date[._-](\d+)\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  depends_on macos: ">= :high_sierra"

  suite "OutFox"

  zap trash: [
    "~/Library/Application Support/Project OutFox",
    "~/Library/Caches/Project OutFox",
    "~/Library/Logs/Project OutFox",
    "~/Library/Preferences/com.teamrizu.outfox.plist",
    "~/Library/Preferences/Project OutFox",
    "~/Library/Saved Application State/com.teamrizu.outfox.savedState",
  ]

  caveats do
    <<~EOS
      Songs should be installed into `~/Library/Application Support/Project OutFox/Songs/`
      in order to persist between version upgrades.
    EOS
  end
end
