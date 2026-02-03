cask "ossia-score" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.8.0"
  sha256 arm:   "505a30ffa39ff761415106eb82dcb3a580727b6fec12ce0d101d59a323736022",
         intel: "cb9f29753ddfbbbb873b1d4e54e4a6d6e59ecf6cc16fce0b3a749587c47fa55a"

  url "https://github.com/ossia/score/releases/download/v#{version}/ossia.score-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/ossia/score/"
  name "ossia score"
  desc "Interactive sequencer for intermedia art"
  homepage "https://ossia.io/"

  livecheck do
    url :url
    regex(/ossia[._-]score[._-]v?(\d+(?:[.-]\d+)+)[._-]macOS[._-]#{arch}\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: ">= :monterey"

  app "ossia score.app"

  zap trash: [
    "~/Library/Preferences/io.ossia.score.plist",
    "~/Library/Saved Application State/io.ossia.score.savedState",
  ]
end
