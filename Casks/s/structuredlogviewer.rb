cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.213"
  sha256 arm:   "18d1ee4cc557a838a11bc9214aa33fa34035e279d0ae24f0a7f37b6bc5057e0a",
         intel: "69dc706368a2004f5ca421cd700c4b2e865989b1ef6d9649de222fba97af0ff7"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  depends_on macos: :monterey

  app "StructuredLogViewer.app"

  # No zap stanza required
end
