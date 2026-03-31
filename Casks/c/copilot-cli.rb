cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.14"
  sha256 arm:          "bf7154d542c1eba2e2c054d195b18d508a365f51f8a938b8c096ad5af7bad244",
         intel:        "0f4d97b8f2f346f01f3888015e12b8869a25e030bee38171dd22cc158be92842",
         arm64_linux:  "7e5c8a7eff1adbe28d9da8a3b0a7732778a576a6bf7b12f191721a9b1e735cec",
         x86_64_linux: "64a49c592776a5dedfca86c0e879ac76ed8c4da12210dc45485b82f5a254982b"

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
