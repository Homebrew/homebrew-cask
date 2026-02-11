cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.407"
  sha256 arm:          "eff2d2f10ce4ba699f0abab4ba10ef7d1cfe686b3ff5b75d2b940ac1ceeed2c4",
         intel:        "3fc279d86bd5a72ba76ee865704ec590802799eba4574dec353ef351f831de44",
         arm64_linux:  "ba3bb7b9378cb87929c54027c571e4e46879a738d44343ebdb7d11d1b4dc8573",
         x86_64_linux: "24670ad546c4cd5fa07956b94be3adae145cfd71cac3eda26604a07b7fadf1db"

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
