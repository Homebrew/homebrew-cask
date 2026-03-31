cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.154"
  sha256 arm:   "e34deb48e99480d6322bbbeb47df10fd60b046bfe80a5a8d25eee0c1c7f7f5cc",
         intel: "c68094e7c72141c4c0db1fad7c9d1975adf7ec1046ab3dd187426463a493c3e6"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
