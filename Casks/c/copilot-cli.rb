cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.75"
  sha256 arm:          "a5ede0d96dbb6cfff8bed0f6872ac3eb05bf0a4ed342d44a0a6548cb242713c2",
         intel:        "e8078d57accc7eabbb29565a2f4c217723acfb7c7a2563ed6cac41c45eb29acf",
         arm64_linux:  "0911f12dd816f612d27c4a360d4f00b62d933845a98d6c913e8d7400a69c6809",
         x86_64_linux: "d304ef66c0c1d2de7d736b3653b36557e80b4f40a0bf8c4a71e7215f3aff7441"

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
