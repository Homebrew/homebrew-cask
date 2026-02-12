cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.139"
  sha256 arm:   "53d824eb5b6df5af7eda93e0774f57b117aeaf686d2d519a852a530c0720109f",
         intel: "2ebd7cbb3bafa08626682404f2508c2a5492e77ffaa49ed73ff10b786a46e0d5"

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
