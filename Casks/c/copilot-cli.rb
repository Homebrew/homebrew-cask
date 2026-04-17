cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.32"
  sha256 arm:          "f0bce5e8925cd6da51d613bd82ffdc93ecd1cb8cceeff89e2f07e7a6980ab0b3",
         intel:        "7c663c6a19329895c095c44481507c524202b67df33f9db0d4b86eafe17b2da6",
         arm64_linux:  "f6c9d1f8c0bc11911265d7bfc51436f33f21ff9bd314331ba009bad203a38a59",
         x86_64_linux: "2b4507e03b013692a7ca99ce5a3c95045fed2901510bf49ed3a440d5e64fb773"

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
