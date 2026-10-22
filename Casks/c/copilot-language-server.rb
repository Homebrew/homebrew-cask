cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.557.0"
  sha256 arm:          "990f6f83fd1f5b6b9bdb5d4ece5727513507b0cef25800287937722263bd6963",
         intel:        "3ed33931baad4434d45d7da17c1943dabcf37b8880820c86d6bed417f2ef8717",
         arm64_linux:  "92459c9a4e069df0736460e8507664cff1e6ace54d743cf347aa294cc204c89a",
         x86_64_linux: "aadfa6dcaecb20017368ce043dc8ebdb20d2acfcc5cca7629b4a1886fd6556b9"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
