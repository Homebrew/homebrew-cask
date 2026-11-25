cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.574.2"
  sha256 arm:          "885c533d14dcf169a23af4abfbd97b3e6b0f76d5f835de9d3f8f04116897c69a",
         intel:        "b76ea905e002f882f9a3789dedaa884f268b772b798697eaebfca0ea3cc71546",
         arm64_linux:  "366e94f182ec7761304f9180f019cc3ee8d01a41eccce14c10acd833ed795ce9",
         x86_64_linux: "00531dba1098dfcfe986902366cd04d870227d387a6b4f9d0e720b42b85902ea"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
