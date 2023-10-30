cask "score" do
  version "3.1.12"
  sha256 "4033767b7b90aee5e973acbfaf5f1a21f17f98361661bb7a2867836591237bcf"

  url "https://github.com/ossia/score/releases/download/v#{version}/ossia.score-#{version}-macOS.dmg",
      verified: "github.com/ossia/score/"
  name "ossia score"
  desc "Interactive sequencer for intermedia art"
  homepage "https://ossia.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "score.app"

  zap trash: [
    "~/Library/Preferences/io.ossia.score.plist",
    "~/Library/Saved Application State/io.ossia.score.savedState",
  ]
end
