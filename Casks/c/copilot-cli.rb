cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.406"
  sha256 arm:          "835a4567e85e8b83f1bb3981ac25639a144934965e0fef431e0c85276698063b",
         intel:        "a56cfc826c9a1fa62aab343d44837ef22d2166b7013519b3bcc43b1821774797",
         arm64_linux:  "8bce662cd995ed367d860a4eb3ae0d7291aa7c81f2611741a6dd2957a381356b",
         x86_64_linux: "93f0ed11443903d32ffbe10bd48fec6c8fa1c1b649fb39c351c5d579a6210358"

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
