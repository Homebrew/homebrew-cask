cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.474.0"
  sha256 arm:          "58d3e1dbaf631d999e17be5a08999230912fbd31c184b18d609e729cbdd3258b",
         intel:        "ff9be0343faf952009a74f9a0ea2c24b1af44cc623ac5323ec5d1611ae326d3d",
         arm64_linux:  "fb2e27888cffa9b034434ddbe31bd651265f05c90103004a633dd2fcc712f577",
         x86_64_linux: "2c608a791ef4aceaedb53aa9679ab7e1faeb679424246d7b30515fcbd780b0b2"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  depends_on macos: ">= :big_sur"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
