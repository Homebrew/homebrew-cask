cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.537.1"
  sha256 arm:          "908c9a6efac50b451ff83fc1c230852dfcde6a19e0367f5ff1c93b2144cbb18e",
         intel:        "1be65d40bd031935e3e6b4d8c0130f148dad2b1a275596972b7fb5ac3ec57693",
         arm64_linux:  "c9352c8b8fcb6e6604b56abc95cbdc8346dfb1c06a215d7c328d27f00be91c44",
         x86_64_linux: "e3a7aa6dd331ee3f7bb16bfa550166eb67d24ee0049e4cdfea0519c4f7f87756"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
