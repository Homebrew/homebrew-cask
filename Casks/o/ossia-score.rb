cask "ossia-score" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.3.0"
  sha256 arm:   "e454890582201ca76b9da82ed4fbf15b7320adb7e83063ed556bab3ea4f3f0e9",
         intel: "ae331792a64722a4d7276ccc4ed3059c525a25bcef24d8cefc69a35491056b96"

  url "https://github.com/ossia/score/releases/download/v#{version}/ossia.score-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/ossia/score/"
  name "ossia score"
  desc "Interactive sequencer for intermedia art"
  homepage "https://ossia.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "ossia score.app"

  zap trash: [
    "~/Library/Preferences/io.ossia.score.plist",
    "~/Library/Saved Application State/io.ossia.score.savedState",
  ]
end
