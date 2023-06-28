cask "score" do
  version "3.1.11"
  sha256 "76ef7a1e5e74532499a0d6817ca195183ab4fb3ccfcd0dd5635207c44bae07d9"

  url "https://github.com/ossia/score/releases/download/v#{version}/ossia.score-#{version}-macOS.dmg",
      verified: "github.com/ossia/score/"
  name "ossia score"
  desc "Interactive sequencer for intermedia art"
  homepage "https://ossia.io/"

  depends_on macos: ">= :catalina"

  app "score.app"

  zap trash: [
    "~/Library/Preferences/io.ossia.score.plist",
    "~/Library/Saved Application State/io.ossia.score.savedState",
  ]
end
