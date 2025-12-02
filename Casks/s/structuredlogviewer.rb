cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.109"
  sha256 arm:   "1f84b04bf152607575fddc0fd850a4734e5ade85cad62bc33f5dcc402d5892ce",
         intel: "c3d1865f3ab618e13e8d4c7b3632cdb377953a3454fa86a13c8b29d818f25e4e"

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
