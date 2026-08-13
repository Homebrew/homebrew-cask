cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.244"
  sha256 arm:   "62d9717e9882c00f3cdb9326c1772d1d2dd90dec8d13d42febe2921e780a55a5",
         intel: "0840f2b864915b9f189bd57a749ddf1fbcdd0afdd64f62b955e04eb50a0b50ca"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  depends_on macos: :monterey

  app "StructuredLogViewer.app"

  # No zap stanza required
end
