cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.545.0"
  sha256 arm:          "781198251e940eb0cacaac8af1a45a5725e09bc50b080bee8ab32a8e810c9b20",
         intel:        "5df00ec2cc94c0cbcc5ed1e43d75b6da2c9a465b1f43266f33eda431e9261b7b",
         arm64_linux:  "fffe8186b26b661d03f12fd909d2e19f53feea8a6c6160ae3968b9d6fc70246b",
         x86_64_linux: "8cd23a68de4676340b12605f9efa734ff9989df26e753aa8305a16bd0bff885b"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
