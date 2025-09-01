cask "open-data-editor" do
  version "1.6.1"
  sha256 "9054bd13777b25b60102241e879a40d22c6fe3121fa2c56383bb24f1216b1e2a"

  url "https://github.com/okfn/opendataeditor/releases/download/v#{version}/opendataeditor-macos-#{version}.dmg",
      verified: "github.com/okfn/opendataeditor/"
  name "Open Data Editor"
  desc "No-code application to explore, validate and publish data in a simple way"
  homepage "https://okfn.org/en/projects/open-data-editor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Open Data Editor.app"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
