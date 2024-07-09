cask "ossia-score" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.2.4"
  sha256 arm:   "4a1f69f6c8072b0476f161b21bd5d37d8b3dd61e97fb8a3ace0d6476135ce4c7",
         intel: "feb43d1e4f559659a80f53cdf57c9aa6cf3d618e9bca6d7d0e2e6b91344351ce"

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
