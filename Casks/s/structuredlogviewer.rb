cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.490"
  sha256 arm:   "d1b93d3b201ac5c5ffd5fb527c859ee156a3f9dc2541b2b624c34a2426fcd024",
         intel: "a023f444ad2e85cdc774558c60929c4e14cd29aecbcc9132c1657ee3cb755d12"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
