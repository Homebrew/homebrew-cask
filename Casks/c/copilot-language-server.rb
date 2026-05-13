cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.487.0"
  sha256 arm:          "80224e2fbdb92b600a3ff29a180ae9c3400f5f4461b487f7af29abf5be2b6d40",
         intel:        "25cb7b49a11ed6c1560ba33d247450854b44b75eed3b82b1df3fbd3d8eb87fea",
         arm64_linux:  "28e219a79a7daa40a8540444e33dd959cb78a5a67a85be2789987bb2269eb543",
         x86_64_linux: "822c85a50d934bb55f3e1a7fd4742062d771f2923923727c13a4428546b3cbde"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
