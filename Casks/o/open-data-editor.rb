cask "open-data-editor" do
  version "1.7.1"
  sha256 "4a0eb1d422caa7fc03edf129f88a10187c5469cea4a64f2f4e9aaa8a0c58d58e"

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
