cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.575.0"
  sha256 arm:          "04d3124da988a4e45809ac086bb84956e34c2e5ca867a705b21fd677267df401",
         intel:        "159a9fdc478e6cc599f966dcb68e79c9caf5b5bc73467c98f88a1e2785799e66",
         arm64_linux:  "6afcbad43c91d7db53f403a7c1c860a63ec89dbed108da18b4e441e940f08daa",
         x86_64_linux: "27a1cd4a3097cec8a087555e4f83bba40e380df0c558ff377ffa1ebe772ad8b7"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
