cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.548.0"
  sha256 arm:          "37e46fc2623cadf45fea254ea18c4f0c546ff397b45b99b2fa82bd2145d7d728",
         intel:        "dafec516dfd0730c6494f769ea614b89d33db9411feef5ead72dcb1565e165ce",
         arm64_linux:  "8cc5613aa6e65217a921d8c7deba7325b89f550f571ccde9d73a46af2ab5dc36",
         x86_64_linux: "a51d719a02de202a36bc97ef5478bc3564e909f4ebd33b4da823f71adeaad5bb"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
