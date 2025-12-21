cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.120"
  sha256 arm:   "d216015bd3606d47e98f3e17b3e284745ea34bbf0638e365bed28db82c53c0d9",
         intel: "7df18c9cb1d95459267a67c7566b43ecfbd11310e18b02345a0988c4fa42ff43"

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
