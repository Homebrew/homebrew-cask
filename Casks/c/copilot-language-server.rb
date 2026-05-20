cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.490.0"
  sha256 arm:          "6cd4b7c3eb3569b109e1179c887b936786b59cb50842b9b9640579a545c15b5c",
         intel:        "2ecf12f5ed50f519ad164be64d67c60bcbe804b896c88dacbe56eee211dfe275",
         arm64_linux:  "3f991a79c803e5aaeb860236861210a39cdcde5fe2e71c24cdf7d87129fc3ef1",
         x86_64_linux: "52d357fbfa8ff0165a8d46ef991c5fd1fde0a119fc90c3e60f07ab8f4b8f6a2f"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
