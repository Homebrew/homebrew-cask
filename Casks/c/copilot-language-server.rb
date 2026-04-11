cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.467.0"
  sha256 arm:          "f6ec5f10e9c4aae3ce9fc83a7a904852da66dd26d67892c8f9e571ac70f6a938",
         intel:        "6f0e43ae64d31d9999348809d4f788097e27c87bf5cdb29621480bb57a758036",
         arm64_linux:  "025b6441228ccd650946a18ec304a0292d11a63fec56df6bb7067a95f0ea7f26",
         x86_64_linux: "22fd8d580302eaac6448870fe931f07a660418171944abd8521e8eabfc44b83a"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  depends_on macos: ">= :big_sur"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
