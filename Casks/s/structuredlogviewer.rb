cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.60"
  sha256 arm:   "29c6e1f573241aa97e7933786922dc42ab54f1c43fe9718fbdc513650933a2e0",
         intel: "e22bc7d6af5c78b0a535b5ae462930a044ab528050c277bc0e63af04c9f7a2e0"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
