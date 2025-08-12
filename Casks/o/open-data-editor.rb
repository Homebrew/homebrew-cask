cask "open-data-editor" do
  version "1.6.0"
  sha256 "9ddf50bc9e2204bc38c393ce16a4160db8046d89f70834b3b07dbc6b6bdc224d"

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
