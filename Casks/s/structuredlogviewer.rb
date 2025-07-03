cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.17"
  sha256 arm:   "2df6007422e493bd26509780fa1b31e13894340ad733118ce24653e1ba0996e8",
         intel: "45ace4a4aad73bac3fdcb9cc2defdd66ebcab5350f70f47aa09d00c3df8e2066"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "Structured Log Viewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"

  # No zap stanza required
end
