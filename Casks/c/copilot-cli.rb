cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.35"
  sha256 arm:          "168e019b8e517b36630d11d797e02d2bf4ba1aa9f6cffa9a9b75a31c7988215b",
         intel:        "080ff26902b7f975e8c1efaa41fb85196a3e821b72f80942adad2d53613709cf",
         arm64_linux:  "c13f50e041db724d00ffe92b0a78a16be0af639db72d83ed9a62ebf1d2b766b3",
         x86_64_linux: "1fa7ccf487bc7faf4fbdd80fde1de892717590d660d18d584d0b878038026786"

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
