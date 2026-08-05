cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.527.3"
  sha256 arm:          "f62e5b0ce2588c87e838dc0e8f4cea6227d057e6b21c568a7499c99397e67a82",
         intel:        "c1b736ac7b2550ea398aee0a3671885e6278278af7898301b43f5679c7a31877",
         arm64_linux:  "b51893e604b659d79022caad69825c623c8aa60aea3a3c46883c15e2c15e95fd",
         x86_64_linux: "c12a598e8e86efff73088f9c9aefb88681ed2799687b1bf0c753c683a78449af"

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
