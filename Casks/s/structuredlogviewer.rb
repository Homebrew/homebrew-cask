cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.246"
  sha256 arm:   "4a4b08d1bbd706c06bffa960de435251d03ca052b882749e3f17cb03c8d1b765",
         intel: "a04efd457b9f4d302fd49668a48da0bcdfe35dc4f43902b95483116cbf811967"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  depends_on macos: :monterey

  app "StructuredLogViewer.app"

  # No zap stanza required
end
