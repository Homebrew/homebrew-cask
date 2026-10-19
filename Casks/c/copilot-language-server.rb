cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.555.2"
  sha256 arm:          "a7682d9a20583b03ea8fd4a68a4323f5743ea529c30addc6f176f62ee54b8915",
         intel:        "e10d64bc0f45c6fef499f64a0dca084c957dd58ff51cc87c0e1b6a9117e4c06e",
         arm64_linux:  "2c7741ccc5b835a9f6a8f7e4043a7cba050d2fa1cb0be3ceb98a6713d738ee8b",
         x86_64_linux: "26da000a5c1367326a461fad3a8b0d009464f146f0870b7ec522ab17d6156933"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
