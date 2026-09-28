cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.551.1"
  sha256 arm:          "e6d878dac932b7f5507e36e7256d39cc621a48b6bdba3a4575a939f5e576d124",
         intel:        "bc520f6c166589e1064b07259bcb0000542b1ec4ebb3deb99c684220db72c735",
         arm64_linux:  "a7d68e35c14594af9ccf40a53c7d8ee5b9ac6b03f77d46952d6956678d0b12a5",
         x86_64_linux: "85066b0a7b08ee28b078917ee6719a19c69a0d169e7c422a73f90e3a03ef9d58"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
