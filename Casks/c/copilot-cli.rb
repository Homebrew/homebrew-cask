cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.388"
  sha256 arm:          "5ffef85feba8b182662b0fe8f3e1162a28be9fc008716129942cb2e6914cf68b",
         intel:        "492756f1168157fd7f0e6d85fa23bed204d79657f4340ba98e5d15b0fa9ca859",
         arm64_linux:  "3c69cb5f3d786dfe8c2df64913a0903626d17995a272171aa5e6fbfc6156b78d",
         x86_64_linux: "130fbd6540e770d19bc6fbc16a3a6f9f721d9f8c6dcff10d294d19de17dd1807"

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
