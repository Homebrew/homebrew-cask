cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.508"
  sha256 arm:   "e89ee404182ad49390c87ac478f43fcdb59b8235faacb7fb03dd81fa021aae30",
         intel: "eb8e8c75bbc12dd42afb783fd51d6011368aeac46cb39199c1c18cd16a1f2df9"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
