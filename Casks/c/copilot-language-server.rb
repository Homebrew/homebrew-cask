cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.550.0"
  sha256 arm:          "56255bf145b7962037c7ef3057656af63e00b213942b1942e8b777a5b158a3a8",
         intel:        "c2cf71b45b61247f652f673580ae72dd467027ce17b1cd21ada021b26d279df8",
         arm64_linux:  "a5a2688676b73362895620e09f9c5f9146c71c42d756c8450cb1b91aed1d64fa",
         x86_64_linux: "74b7f0ddde639027d3ca0d505271d82ab1623985a42a9f938bd9d73c35dbd05b"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
