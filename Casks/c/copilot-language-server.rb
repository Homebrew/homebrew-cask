cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.570.0"
  sha256 arm:          "0970c54fa11a4e6afd926f46fdce25d76e694b027262daf1599e342065dceef2",
         intel:        "6a67bb39b47a7cc65c56f1188ad1502cdc57646b3f12e167868894217e0cd893",
         arm64_linux:  "47dd660a6dd479d4da4cb8a7f94bc339e99c49553de5d4e78b040b227b928722",
         x86_64_linux: "bd0580ad93098a6e3fce170de255a9b0940c11896e5f78df48c77705b5f51a63"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
