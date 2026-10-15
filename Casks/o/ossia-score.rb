cask "ossia-score" do
  arch arm: "AppleSilicon", intel: "Intel"

  sha256 arm:   "382e1e6ac976215ddaf8d60d5ae978f87e9ab8b2f99ce3dfd1370488286088ba",
         intel: "87d02b89412a1d74059aaba546978f7f4d85d57e06844cdcb89b7b1c02ef7ef4"

  on_arm do
    version "3.9.0"
  end
  on_intel do
    version "3.8.2"
  end

  url "https://github.com/ossia/score/releases/download/v#{version}/ossia.score-#{version}-macOS-#{arch}.dmg"
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

  depends_on macos: :monterey

  app "ossia score.app"

  uninstall quit: "io.ossia.score"

  zap trash: [
    "~/Library/Preferences/io.ossia.score.plist",
    "~/Library/Saved Application State/io.ossia.score.savedState",
  ]
end
