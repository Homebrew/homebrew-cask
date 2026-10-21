cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.102"
  sha256 arm:          "606f9539b88af1198523f671ffeeb6e58571ab71564252efbc3b2196f1ed3f2b",
         intel:        "7a2af746ce5d11e2be486f06d85ce2fc620d5965413c8088fea8ceb2b1d9cb54",
         arm64_linux:  "634ee7cc4fa4b7447ac41e2c3ce54928d8f5214f418954e3af36f372e849c9c9",
         x86_64_linux: "cabbb04a88a8034ddfa21234cbd52b7676536aec2b292624e6fd6796f891a8ff"

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
