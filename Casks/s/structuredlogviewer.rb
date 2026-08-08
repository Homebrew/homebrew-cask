cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.240"
  sha256 arm:   "98f84bb55ee2d98c01d74fcb6927de3d1d056a7adbb412abe232369b63ee6503",
         intel: "a24de4ec3cca809389f8a41f84b1c3ab896478c41d47c3202e6c2a29a5df0c24"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  depends_on macos: :monterey

  app "StructuredLogViewer.app"

  # No zap stanza required
end
