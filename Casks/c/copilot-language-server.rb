cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.535.0"
  sha256 arm:          "fa71d740a169a5b85d9fc23c8c363ba80307603a9214354fb5e58566630ae5b4",
         intel:        "4d166a4bf0802f5cf8083d0779c702031fc5110e29df66fcc7dab8702483f815",
         arm64_linux:  "88c7871d4381fe3d09c721946599b7c1f4e5d524e1aea86ba2be116ccd6d0ac0",
         x86_64_linux: "de701f54b09e793b63331263d264f11ca81123442574d66c37accc0b69697269"

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
