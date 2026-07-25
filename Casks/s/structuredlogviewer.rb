cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.217"
  sha256 arm:   "87c25085af8fffb2c4d623db6be0e108c6cca031c7e94301521b84d44c1d20f2",
         intel: "650de2b1082f76d1aeece07d8f133bff0f9c59fe8a3ef7467f93e278f9752e0e"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  depends_on macos: :monterey

  app "StructuredLogViewer.app"

  # No zap stanza required
end
