cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.565.2"
  sha256 arm:          "a275de1ee24205c6834cf354d0278c78f0f4ee1a9a84c1867e39e1e2c8f619f9",
         intel:        "d48e64290202498de516c83b48302d08d84e58c4561fbca09f9df6d15640d714",
         arm64_linux:  "7818b12e007e0312f1025581eed64cdb0b40ca81bd116e4f0ee12cc81dc9df10",
         x86_64_linux: "aa2b9db9d091fa95e2b28b85f4a2a3952d5a88466f5a6e0e7ce06bab9b07455f"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
