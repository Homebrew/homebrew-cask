cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.489"
  sha256 arm:   "c15674c5345ae32a3b54cfcc9cc61c7273b64176f7e42fc15baa45e6d9a5edc0",
         intel: "6f836ae7b6cc6a1a42c08c3e6b9130faace126b5d889a127917a06e4cc1042cc"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
