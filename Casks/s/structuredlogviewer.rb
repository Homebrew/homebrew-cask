cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.488"
  sha256 arm:   "2d1d2697dba57485fcae0591f224aa50309d1fe89d70de849c3d89d8fa2a6227",
         intel: "b709738e2f8cd2ef5c757b2215f278269882045b96a058193eefb270436517d2"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
