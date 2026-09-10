cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.544.0"
  sha256 arm:          "d9723c17f64657fd66d845285f79ce8aaac9204e33a218090a45c2dc0f9f8cd9",
         intel:        "ea7cd4460970e229b120fc0d4665aa00d5909bc3d43e196318076228e6afc2b9",
         arm64_linux:  "1484af9f90233d1e7a8bbed0523497edf9ef31d36b9fe3a1ce82a08f8c2007a9",
         x86_64_linux: "420029d44839f1684519e21d5f51d4a81dca8488bacbff9835b9e8faeb6ab676"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
