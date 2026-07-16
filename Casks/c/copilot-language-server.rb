cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.522.0"
  sha256 arm:          "ece9707039293522f8be989495f1f41dc0ce8d3d50405e0c702ae1cb2c0de637",
         intel:        "8189f46db27350153c332e4495eb55896ae6c4f9e3f2a06dc2a0451306ff00e1",
         arm64_linux:  "4b0b256fce294a6dd21560cc1372fb5102e17156dd797ef51510204eee2d4dc9",
         x86_64_linux: "034c450e814e483cf3d389b1cbe4f2f1dfd33d4fc0b0325396dcc861c03e7645"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
