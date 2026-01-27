cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.396"
  sha256 arm:          "ec74c17fd788c66d139d21f3d57ea576aa292660abda990da2b90f23a8a2d5ad",
         intel:        "2b08e98a3a452cc846f67ad137c7ba8c619edd725278818ea7f7153a317835f9",
         arm64_linux:  "778ecefcd1bae0214d63354b7d9df4d42b55e7cd9ba82ef9ab8265aabc28d241",
         x86_64_linux: "6e877f6758792d98965eb1b6f2c7e3bb2d65401419f6c146860e86e641273ebc"

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
