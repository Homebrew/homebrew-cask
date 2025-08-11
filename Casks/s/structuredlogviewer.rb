cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.42"
  sha256 arm:   "78798899e985da00ee75f2cac70d6995e2377dfbee956470a41b281da14e92fe",
         intel: "2b6ec62603549bb8c68ec9f462e448c58759c76cb0e0bc11d28e874dfc8a81cc"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
