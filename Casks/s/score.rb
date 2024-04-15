cask "score" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.1.14"
  sha256 arm:   "d13ffe554a76a0c4a80854e364138d60ea40b09322581001ba26c3a231f19ba4",
         intel: "130160990470de3bc501c118e371a8623c230c52e6cbab86794289239cec36f9"

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
