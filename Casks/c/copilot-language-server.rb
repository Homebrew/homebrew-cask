cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.572.0"
  sha256 arm:          "a856247eea34e24793d88e2c87e62faece4a8f216806fdea3c52e720633fee4a",
         intel:        "cdf21b50eefbb5b6a8aa617b9c11920a0bdd38dd569c769a96fdcab40c3ce43b",
         arm64_linux:  "6dc38edc7e0d01528b47c83d1562bf2e95c5aac6efe1025606a4af22e2d4b7cc",
         x86_64_linux: "d97ebaee8e2ca791aea2c2cc9b847ae32044b561e0315e71d6acc5e344df25fe"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
