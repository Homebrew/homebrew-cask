cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106"
  sha256 arm:          "ed8f7895f1721fb129d08b5139d140a01af5df716c319698fd79f8fb7f9e19a1",
         intel:        "befc63551863e950cd25ac1bd4524d13094d51eb76ee0f4d33c091b602e240ba",
         arm64_linux:  "1591b72a0e01c286ab3e3aba98f6a204b6895cf6f994d14e3769831c8d37e72c",
         x86_64_linux: "bb2ac6a50c2d7ceffee3b489f278fb9ba4fd39d4678dd75b5b021d4feedcc3ef"

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
