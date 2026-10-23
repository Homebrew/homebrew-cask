cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.559.0"
  sha256 arm:          "6c4926532c05343e4c5e7e93d71399eebceab579c738b84d92bbbffee46864ad",
         intel:        "1cc4494d890fb1983d349b32d2a8177ca8163565bc852d5a1b1c5ec4412537aa",
         arm64_linux:  "bb188fa86edecf04456d4a27bbb9f1bd6cb0c3fc4f867f72752832dae9e052b7",
         x86_64_linux: "35605e01abbb8dee4235a4ad25188cbe95023c5e08cdcb731221dc6343b3aef7"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
