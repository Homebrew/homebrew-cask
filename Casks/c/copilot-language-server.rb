cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.510.0"
  sha256 arm:          "325e2968ac3f13c243d312e9c01873738ee59c79e25af3b3d608f4ebda0ff341",
         intel:        "8b6feeb5223b18b1f0d74b1e2262ed354dfea62e63706bd1020b81a03a54b554",
         arm64_linux:  "48008851312f4fbfbca86d142918a635601383e1b9ae99c1a3c81ad66063c1ef",
         x86_64_linux: "e43e745cf3e7bd15a9d45bb6af9e5f2330579f3dbccae01786bfead262d4f4a8"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
