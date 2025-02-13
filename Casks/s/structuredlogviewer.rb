cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.2.441"
  sha256 arm:   "939c176bcd394fafd5374b98703fa94d4a843581ebb9c2ccedb6c6ee0add1d07",
         intel: "3856cf8423e8c77745f5a0bfe977f4354acf0f295c476f1d85984879ea274992"

  url "https://github.com/KirillOsenkov/MSBuildStructuredLog/releases/download/v#{version}/StructuredLogViewer-#{arch}.dmg",
      verified: "github.com/KirillOsenkov/MSBuildStructuredLog/"
  name "StructuredLogViewer"
  desc "Interactive log viewer for MSBuild structured logs (*.binlog)"
  homepage "https://msbuildlog.com/"

  app "StructuredLogViewer.app"
end
