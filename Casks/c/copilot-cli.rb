cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.399"
  sha256 arm:          "ce44985742a068acfa8db55a46733f3fcd6c22a732377d52ddca50dede8d7e82",
         intel:        "295a909acca18b02a3bdea5c49727503d85cc38d2932ec08a6a70bfe32d33a5a",
         arm64_linux:  "863257a84d66bb6c0b966c2cce8e105f8d0ff82362be428f0daadf12c88d9bb5",
         x86_64_linux: "7a6ae73429b45ed9bbbf3624ab0462d89c8d5a92425e27be06b857b36fb0d65f"

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
