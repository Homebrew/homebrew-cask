cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.554.0"
  sha256 arm:          "d5ba2bf881353a9791ab341397cbde0acdecb43de14c6dbcfba7571801bb3ae1",
         intel:        "1eb51f1a05746ba9206ad9c6c0fde1bd910c025cbbc77e094dc07227f8d4f2b3",
         arm64_linux:  "12b6b2df64987ffb42c79cab409cdc6f0e239b56d04569a2e29cc0d107febfc3",
         x86_64_linux: "f87d67b12986bfb8106cd19fef79b80a423bc1012975c8f380bcd164a753b541"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
