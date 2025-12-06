cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.118"
  sha256 arm:   "f6e76a00e80c23ca6250ac5ce67c8542ce42fa79575701f183e8b22728900360",
         intel: "9d7794472e165abe413f659d8c1ccba06c01072f0548e485e79fc2146bc21d71"

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
