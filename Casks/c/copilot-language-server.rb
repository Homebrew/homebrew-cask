cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.565.3"
  sha256 arm:          "bf81bc49cdeabe190d8f19e3dfadd78cbac98ca9c1fedf1f08eed43abcc46511",
         intel:        "d3c493a0345940fd3d43227e9bc9ea284ff429e9d37f99078b0ce9b41a2226b6",
         arm64_linux:  "d6a3c0b7c3312aed0dbbe3f36d6c6cf8edecbe980e406276374c27a4e5f82bfa",
         x86_64_linux: "92d6f35f1d7c2bf246f5ee87dd37da9d52d6270a38a243978e29ed2d9cc2a730"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
