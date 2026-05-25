cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.495.1"
  sha256 arm:          "2616c46a9befe5dcffda15a9ec1be71811e68969ac1d847685d28f5a91aeb2a6",
         intel:        "e353ff6155c42dc77036062bc352a7d0b2bac0d5e1105dc51112628a1595f72e",
         arm64_linux:  "37f1f3ed2ba6ad5f50091f566f82c0b44d12fb82a13750873a7dd9e5fb5e53c7",
         x86_64_linux: "17752c98df38a2f8a75a088067a70ddee0a1cc4083c10bd1dde305a10297a83f"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
