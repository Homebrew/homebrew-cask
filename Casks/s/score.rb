cask "score" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "3.1.13"
  sha256 arm:   "d13f5c7880e8a48788880109f6e232f7b72c0d51da283030587e3c6d6bafaaec",
         intel: "c9684d514a59523a808c5ecb532af9db959a12b230ad9febc052f723b2b93d9a"

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
