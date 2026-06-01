cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.57"
  sha256 arm:          "6e83dbd6e0c4738d9e784b89cd1db07ecb711349b66fecdf92dbbd2d4e6de9bb",
         intel:        "493804c44f41ee7e512837a33f4796d1345df6b85bbcf3acdee717ad87eb438d",
         arm64_linux:  "e2cd2c5eadf33bbb86a4de7a46686f87c8d9cd3913ea972d9da92f72077b5b2f",
         x86_64_linux: "d0d0d64ba259d07ce7bfe9a12cbd9a30d1dfa30bd1a20323bf7e9ea712a940f9"

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
