cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.51"
  sha256 arm:          "046ee196cb86b0bcbe455345b040af4485ddb1725275f4631c33d3fdca8dcc3b",
         intel:        "381c7554865cbe41932e2063104ee27098abb5cea2c33b37ef179d25fbdb9f03",
         arm64_linux:  "3b3fdc2b8f2c2cb83036dad4820c1781c98abed9b03709c0d9e5571dee5679a5",
         x86_64_linux: "9be82361b57409842f1188a3e3cd8b85da2e0c930b7fe6b60a70d79f5d5d38b4"

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
