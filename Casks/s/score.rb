cask "score" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.2.2"
  sha256 arm:   "864027b8c30fccb6ab56334367fce708a4f1b3bb2c9757c7c5f0bc8ca5743344",
         intel: "5275b2853652b6ecd5fa2cf2e7653fdcc45a2cd6105b2dc9fc6dc56e586e3dbe"

  url "https://github.com/ossia/score/releases/download/v#{version}/ossia.score-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/ossia/score/"
  name "ossia score"
  desc "Interactive sequencer for intermedia art"
  homepage "https://ossia.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "ossia score.app"

  zap trash: [
    "~/Library/Preferences/io.ossia.score.plist",
    "~/Library/Saved Application State/io.ossia.score.savedState",
  ]
end
