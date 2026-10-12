cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.553.0"
  sha256 arm:          "b4d6fbfa7cb892edb310cecc17aa48de0f998dc2537332826d44e90edda00bc2",
         intel:        "e5c1c68f224fb545cce6012096e7e72f5d67aefc429344ec057dc20e4a83f097",
         arm64_linux:  "f37d6ebf11c99ff52b3e49bcdd4490cffc9b1aa287455ef553eadc7c965ed71f",
         x86_64_linux: "3345dd63b7cde538b9aa40f67147ac8da27bffa6df4ac99bbc0ede9864ddd698"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
