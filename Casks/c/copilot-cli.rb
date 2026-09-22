cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.87"
  sha256 arm:          "5efcf761670d0cbb3da0edd86fb6fd14cf890254d58cdb80c5ad6cfd4b5394d4",
         intel:        "946a91fbb938b9fdf044856761f338c3f2cd92325c2bccc6c50f61deb2e5fc25",
         arm64_linux:  "c175343f60024d368e58a71f2294384b2b7df7b958079570b05b69ca89ce55f6",
         x86_64_linux: "49d81b184f1a1b358af676155fe97e341b9d9f0bc8dd25190dfe17087669b5b9"

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

  zap trash: "~/.copilot"
end
