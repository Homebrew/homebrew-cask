cask "ossia-score" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.6.0"
  sha256 arm:   "3f5538ce7e1d9c7e3e3276dac837fa98864ae1a7e2c595acb7d7fcc8a3bf6c5a",
         intel: "fee227ba2d98b4b2d87ca439a85d71ffb13ed4e9e002ddb582402ba5ffa2f3da"

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

  depends_on macos: ">= :catalina"

  app "ossia score.app"

  zap trash: [
    "~/Library/Preferences/io.ossia.score.plist",
    "~/Library/Saved Application State/io.ossia.score.savedState",
  ]
end
