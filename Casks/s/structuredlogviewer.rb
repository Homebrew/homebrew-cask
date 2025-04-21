cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.476"
  sha256 arm:   "6ee6a5df0f371408fcddf28807dac06608e41d854b11fb28909de52ff277149a",
         intel: "cfa1bf9d1563be389a96ad3f71f67c9ea0a721cbd025e9eef55c26661e744da2"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
