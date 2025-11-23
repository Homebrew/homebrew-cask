cask "structuredlogviewer" do
  arch arm: "arm64", intel: "x64"

  version "2.3.100"
  sha256 arm:   "db49e5e6142f8d0a683fd6abef085eddaf1f28ef17c9c514e400b162b358065f",
         intel: "228f34f53b8ea5b524b2862407d0691fb71beb1a82fa54d544e47eb437d0081a"

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
