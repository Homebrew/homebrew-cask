cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.13"
  sha256 arm:   "f572d5c6436d0b395b7e0cc9c77cba352a39930d27643d6f7049514c13720079",
         intel: "86a4fc49a2bd43c841515e5b050abe4f3bf20bf9be699ca21e27194c8ef0f5b1"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
