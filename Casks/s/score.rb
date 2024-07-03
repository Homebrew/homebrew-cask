cask "score" do
  version "3.2.3-2"
  sha256 "300c63f98e3e641df121f8b0244bf24f38b5181b49b3f222d39676ff866d5438"

  url "https://github.com/ossia/score/releases/download/v#{version}/ossia.score-#{version}-macOS.dmg",
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

  caveats do
    requires_rosetta
  end
end
