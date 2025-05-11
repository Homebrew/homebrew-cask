cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.480"
  sha256 arm:   "71445b97f3795b31f828ed8d07020ca00961fbc44a6c496d15bc76feae5be840",
         intel: "8b4cfdd44c7e79a3531a8cef21dc584aecd86d79081d0d3f29377a544113c63d"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
