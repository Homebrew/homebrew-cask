cask "moyai" do
  version "0.6.0"
  sha256 "e5124a6232ae776af7a8b794cf33f6ae1bae352cdf975fa9d7a701370bfae3cb"

  url "https://github.com/moyai-org/Assets/releases/download/v#{version}/Moyai_#{version}_universal.dmg",
      verified: "github.com/moyai-org/Assets/"
  name "Moyai"
  desc "Task management tool for organizing projects and work items"
  homepage "https://moyai.lol/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Moyai.app"

  zap trash: [
    "~/Library/Application Support/com.moyai",
    "~/Library/Caches/com.moyai",
    "~/Library/Preferences/com.moyai.plist",
    "~/Library/Saved Application State/com.moyai.savedState",
    "~/Library/WebKit/com.moyai",
  ]
end
