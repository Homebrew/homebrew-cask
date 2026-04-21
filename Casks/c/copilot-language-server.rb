cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.473.0"
  sha256 arm:          "3447bfc0c2dbc1eb61450b4cd5c64c070dc0839af6e81c38eae374e2f71c2dc4",
         intel:        "03b5e2c92237ba7f5ce522a32665acd0c829e17c2af1126156da89d5b4a44471",
         arm64_linux:  "f3b1977bcbb3e02d4eea0b5f3bf8713dbc0fc3f103876518d79c5875b97d4631",
         x86_64_linux: "a415d33bdaaa063919cd27e39fa34d9b02d11bfa03c743f2fb02ce8b4467f77d"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  depends_on macos: ">= :big_sur"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
