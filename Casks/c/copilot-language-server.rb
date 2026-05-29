cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.498.0"
  sha256 arm:          "92cde0d9cfabf618f4e1cc90c9e1fe5a002c452cab641c6328a899e46e9716d6",
         intel:        "c2e520807260c42ad957bded7398ab9d5ad5f4a9148238e9bbe00fb66fcfca07",
         arm64_linux:  "339e217e074346e6829de0657613bb794bc5d9e75489292dcfcb3aace89d571b",
         x86_64_linux: "d4e02ef7f3703eaeadb06428d8038a205cc2f537b1459ea4c463bfa3a52e5d9a"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
