cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.103"
  sha256 arm:          "33e6553b23d1e15946685df297cac12e0b3efe98102009d5e7093453ecc6e60b",
         intel:        "dffbc934dd277186e17c49130aefc54d7e9215bbde8a478a26d5d80bb356f05c",
         arm64_linux:  "728a91dffb9a02817bd98c5b01bf2f9cb08c4fdac3c0ca8c48d7f1ccbfe282a1",
         x86_64_linux: "9aeb4430e9ac9523546db07b227c7aba179a4710a55f9ac29ad143b0f9e1b325"

  on_macos do
    depends_on macos: :ventura
  end

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

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
