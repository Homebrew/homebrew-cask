cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.28"
  sha256 arm:          "27ffe71a0bdddb432ae79d526cd69481d8bba7f7c02311c598b036f6100c4160",
         intel:        "0a97ccc55e79f397ccb008f94b32db97a93d14e05be7feb100dfea8646b36751",
         arm64_linux:  "437e4a841ad15fd306bdcb7d54cc023ae34b80249428bf9948564117397bfe97",
         x86_64_linux: "353eeac118b44b027351810a1bfa4e096b7c940404e3ee55d447a4c5a4dedf52"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
