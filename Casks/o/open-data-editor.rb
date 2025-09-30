cask "open-data-editor" do
  version "1.7.0"
  sha256 "1b864cfe3f1a7187a693ff9c9a18c15cf1d2c28ca2127f3d0f860dac25e77b33"

  url "https://github.com/okfn/opendataeditor/releases/download/v#{version}/opendataeditor-macos-#{version}.dmg",
      verified: "github.com/okfn/opendataeditor/"
  name "Open Data Editor"
  desc "No-code application to explore, validate and publish data in a simple way"
  homepage "https://okfn.org/en/projects/open-data-editor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Open Data Editor.app"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
