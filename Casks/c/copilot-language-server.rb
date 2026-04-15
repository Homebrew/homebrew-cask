cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.470.0"
  sha256 arm:          "12c628e378e8169feddf6eb2dbcb677534ac4299b298fd179e3eae1cc0c72ce6",
         intel:        "2c81cad2c662b884d9d048403944a9c3b4ae16a1317813519e229f75a9034602",
         arm64_linux:  "98c1790b5755876f981139d83b9bf0c851eabb342d6081604cd408f30a2d33d9",
         x86_64_linux: "b5cfe00b3de3cd65dfb7cc50c7f61e1a561a7fcabf1d831e510f6a888a4be987"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  depends_on macos: ">= :big_sur"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
