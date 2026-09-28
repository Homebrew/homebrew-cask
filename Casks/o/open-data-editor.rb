cask "open-data-editor" do
  version "1.8.0"
  sha256 "e21dfc9b3983e49c367f6ba81b87615bae6071943cac5a8e4a07c8862440f013"

  url "https://github.com/okfn/opendataeditor/releases/download/v#{version}/distribution-files-macos.zip"
  name "Open Data Editor"
  desc "No-code application to explore, validate and publish data in a simple way"
  homepage "https://okfn.org/en/projects/open-data-editor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Open Data Editor.app"

  # No zap stanza required
end
