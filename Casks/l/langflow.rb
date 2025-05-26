cask "langflow" do
  version "1.4.2"
  sha256 "42a7d642db5b75c671cbdf40faa5d87163cf34bb35b50e1537cd47fef49eb637"

  url "https://github.com/langflow-ai/langflow/releases/download/#{version}/Langflow_#{version}_aarch64.dmg",
      verified: "github.com/langflow-ai/langflow/"
  name "Langflow Desktop"
  desc "Low-code AI-workflow building tool"
  homepage "https://www.langflow.org/desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Langflow.app"

  zap trash: [
    "~/.langflow",
    "~/Library/Caches/com.Langflow",
    "~/Library/Caches/langflow",
    "~/Library/Logs/com.Langflow",
    "~/Library/Preferences/com.Langflow.plist",
    "~/Library/WebKit/com.Langflow",
  ]
end
