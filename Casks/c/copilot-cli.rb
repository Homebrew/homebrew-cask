cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.405"
  sha256 arm:          "acadd29ec787f5e612f9795b982b888225c9cd617e2c6d0ee6cc758980e5bc68",
         intel:        "601597a53d3da0748e659287898f64888fb0a17e6510cbc3916a441026a54ef8",
         arm64_linux:  "3b8a17825cbef6235e616bc5aa604b6b7684ae1f62e64a588fa44cf5295507e5",
         x86_64_linux: "8d915cdaf1e5a315ed2a1e154b3c30d5f7de4676d7ff1dbaf21ae023d8566e02"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
