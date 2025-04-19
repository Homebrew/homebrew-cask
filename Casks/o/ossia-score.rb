cask "ossia-score" do
  arch arm: "AppleSilicon", intel: "Intel"

  on_arm do
    version "3.5.1"
    sha256 "4c68eee0d0b1f33e6ff4c03c9722b53b778bcc6bc58b97480ed465532d66264b"
  end
  on_intel do
    version "3.5.1"
    sha256 "55349c1654962b92879f57fdef2e4d3a24d1c6ce9ea58d10a1ec617fbfda8c68"
  end

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
