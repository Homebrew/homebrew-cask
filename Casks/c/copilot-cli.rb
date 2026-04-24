cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.36"
  sha256 arm:          "288ee088bb57c3853089147f7dc7ef7d1ecca5f7f2f9ee613f1365232e277a19",
         intel:        "bac9f4811f5266943d6f6c53c28d01e865c08740d1a258201170c4fb8bd0cfb0",
         arm64_linux:  "fc560b3b19db561bc4379a7e7be853f8a4ad1b8fc0c109559553914a737dc513",
         x86_64_linux: "9b8a00aa6140e0b6eb0245262f7d3f8bdb170a2e782609acdf3d206bbc27b431"

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
