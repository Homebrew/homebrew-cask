cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.465"
  sha256 arm:   "a5737c7e4fa7163f66c99099269e9a92f23775f8e4314c512d8c8c89a7891a89",
         intel: "bd444e282d3e30583555d15e17f06d090030b067962f3a24017ad27f6e016a65"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
