cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.104"
  sha256 arm:          "c6084c40bb761be1b1bbaff3f69426ee51d842327b6b4af0d9290436477cc708",
         intel:        "fdda9b07e1f14cdbb2f506f64d679682937417bce33869d69dcde8d34f681278",
         arm64_linux:  "29b3978051df684109e2343b2fccd733f971f8ebe472732fa3e07cfc2093f8e7",
         x86_64_linux: "fa9722665f2c670aa6ce26f1eb30fbfe7ed0177606bf61c21125855345c9c447"

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
