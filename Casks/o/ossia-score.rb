cask "ossia-score" do
  arch arm: "AppleSilicon", intel: "Intel"

  on_arm do
    version "3.4.0"
    sha256 "09791cf07c91032e08557723f988ac739ba47ab1ead847d13b666a479c855cc8"
  end
  on_intel do
    version "3.4.0"
    sha256 "6c1b71c4c14936ae261967a796cb17702138b9dd52268feb4f5bcdb6d39e5935"
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
