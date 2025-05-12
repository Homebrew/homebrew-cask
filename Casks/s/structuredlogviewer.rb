cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.487"
  sha256 arm:   "485bbc79c604b1a0eafab661365d14518318ea9bb763d931409e6affeea89fc1",
         intel: "24db4099a1971927f5b9d36ffb77cf1bb62a4bc78ddec4ceffb3c9d15b564548"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
