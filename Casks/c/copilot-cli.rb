cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.375"
  sha256 arm:          "2b50eaa84cf04c49d71972256e720b2092a5b61b5a49ac5a1fed0fc25c7fc4cd",
         intel:        "e882932d12e0ff4f124335c2df95da60253945c96b30f962eca76c5a0a4bc368",
         arm64_linux:  "d576f90b64e3ad9b62cb0c27f0a877a911012cbbe1f50656cf5e3eddbf5848a5",
         x86_64_linux: "78198e85b727ee6a3f68d0b348fb3144ebefd5b7fb965f50329f09e1cd9c5623"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
