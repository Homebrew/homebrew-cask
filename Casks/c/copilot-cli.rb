cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.421"
  sha256 arm:          "15df5a1f29c7c46560efdfcfba08dc87ecff3d3025c0d1e16d223d2b087a5e3e",
         intel:        "f28d885bfeedd19e8999247615fd7e12fbcc0e4731313c3b2a4bc6ff4103f463",
         arm64_linux:  "6407f6bd5d74a4bc1001b4da1805b147f6d73f3257d6e00e11a42a2ae246bcbe",
         x86_64_linux: "a179d21d3c34682d12528536213fe1a5d9c3bb9d38524ad1ce87564220f0ba37"

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
