cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.59"
  sha256 arm:          "a7316b98659f0340a2c904395e7fa2add7e41ed99e688a0b29404dd8861a8d99",
         intel:        "58f01c456628a60d00971700b25a5e54caa8483df81251676067fe0ddf98264e",
         arm64_linux:  "409d93d289e220e4d156696f9052eba313fe1c423da38bedd34a52ad9fd2efa1",
         x86_64_linux: "44c1f29b2ab2b51ee9d6fab8b930919186ba908bb760e02da3fe3065408bf625"

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
