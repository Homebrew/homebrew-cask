cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.551.0"
  sha256 arm:          "323af766d32e2d81ae2f4b80d51ad05b2a672bd895a4e381dd07972b80cf8f2d",
         intel:        "e7c1c80d9149c731e6a782d73e8be515f09c9cb34bbc3ec4b198821cbedc336e",
         arm64_linux:  "aed43f4c70f678aa71881a9e048226397e637354c139cee5c820475010e49291",
         x86_64_linux: "bc84b917b64cd138b927847cfb203715223905809ef8006db1a8219990610eac"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
