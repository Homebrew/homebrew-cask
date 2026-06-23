cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.509.1"
  sha256 arm:          "391a3a2ac987262a66d9262e928c640356af28e0c269251e5cef3ff0a6ed8549",
         intel:        "9755c9b2dcfb03c2d8a6bd9bfcbe147ce647ba302a57d3806319261f05626754",
         arm64_linux:  "b9443a80d53a7b9ec10a68550cfd6d8ab06ebcb927cc11d36e75b957cdc261b0",
         x86_64_linux: "6f7b7a3d5c8c0db44738aa87004d19b2a31f6976af6451ab0d37044c74a977d8"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
