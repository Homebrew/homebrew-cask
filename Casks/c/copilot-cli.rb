cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.5"
  sha256 arm:          "54b0063d78fc0727491ff3f8fa251eddfeec80e76b3ffba04e2ccae56977039a",
         intel:        "f1cca1917cde79abf65d089fb2dea77198e7a2d6ba4760c5a77ec84243541b94",
         arm64_linux:  "ebb0dd1b5c8a6011dc2c79ce02e5c06a49ea757f39fa9394f3cf17d09c0a6f78",
         x86_64_linux: "40d146228ca4f8133e5fc5071b34526cecb0363b1f1a59ece4807c25990eb990"

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
