cask "open-data-editor" do
  version "1.6.2"
  sha256 "e1ec2814c9e99e348ca6cb93d52c65374b6c1ba5748ed3cc8f238629d0b7c160"

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
