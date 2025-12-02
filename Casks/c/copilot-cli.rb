cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.366-8"
  sha256 arm:          "96931c50bdf1f0ccebe1746bec47d61d42f4429330f5ace8f43152e92e3706be",
         intel:        "36f7ac14e47445c568d7c940b0d9954e315201ae0f81e3e66afcaca906ec5e08",
         arm64_linux:  "e08ea0912d42eac3e110e52623a82b811719addf7b9e2003c962ca27457d78f7",
         x86_64_linux: "0c7e5249ac097ba2d8aed6f67c5a172c3e9ff363a911afd782415064e4e88093"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
