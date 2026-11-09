cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.567.0"
  sha256 arm:          "6c028d031eb2c7b6bc5a304954931c24d346af2f4b8f114bb0106d907d76247d",
         intel:        "3f65f54a7c0ae3a20b01ebba39cfb72944b32bace7f218e85b08a84e880b77bd",
         arm64_linux:  "cfe84671605856de4d50a4a174b7fadafa7d90c87013f37cd48b1485f829654e",
         x86_64_linux: "d225beff2d60e09ae8c6c2e71665e353112ca2c1c46ae243935e273c8dfa3c6f"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
