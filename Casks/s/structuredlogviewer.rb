cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.474"
  sha256 arm:   "d4ac026b1c168607c14b61afbd7890da33913c57375022590cc61dc1146740d3",
         intel: "dc4f2d88f3c0e744652b6bd5d5e0ad6ed05abfb0607d776b84af8f0a21c9978f"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
