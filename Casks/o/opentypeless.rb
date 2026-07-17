cask "opentypeless" do
  version "1.1.50"
  sha256 "ebc9f56748d961361445f0962b62793ce5cba47d357ead53f5a31c1a3bcb375e"

  url "https://github.com/tover0314-w/opentypeless/releases/download/v#{version}/OpenTypeless_#{version}_universal.dmg",
      verified: "github.com/tover0314-w/opentypeless/"
  name "OpenTypeless"
  desc "AI voice input, rewriting, and voice Q&A tool"
  homepage "https://www.opentypeless.com/"

  livecheck do
    url "https://github.com/tover0314-w/opentypeless"
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "OpenTypeless.app"

  zap trash: [
    "~/Library/Application Support/com.opentypeless.app",
    "~/Library/Caches/com.opentypeless.app",
    "~/Library/Caches/opentypeless",
    "~/Library/WebKit/com.opentypeless.app",
    "~/Library/WebKit/opentypeless",
  ]
end
