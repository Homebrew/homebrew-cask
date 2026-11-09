cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.269"
  sha256 arm:   "480e1ceed3555580874bb36026963ad28f3a8ea6b9bc400936cde61b7d2e287b",
         intel: "f0da63527c757b88905f8e6af0599d18b3b2d8bca92a442d8c97ce0398c168e5"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  depends_on macos: :monterey

  app "StructuredLogViewer.app"

  zap :not_required
end
