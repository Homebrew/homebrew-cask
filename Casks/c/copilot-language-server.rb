cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.513.0"
  sha256 arm:          "1cd8e4ca6f2028bbd9ca485546ce27eb97517ded17475fb473a414301e0dd0a1",
         intel:        "cc94533d71a6c7c543b0446b9a64e9f67f9bccafed84ed30c36d1fea1bddfdaa",
         arm64_linux:  "50a6efe9e6eb35f09624731b922c98a7e8d5f4fce81de2cbfc20e3a0aa62321a",
         x86_64_linux: "485181b76e35e964f1fe9fb6ecaf27a0fc2ed2f143b39cd77ee13360811e1bb8"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
