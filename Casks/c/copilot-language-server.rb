cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.529.0"
  sha256 arm:          "915ed655eef187719f8354004624cdbffb705499d5cc024f5ed8eba30c2a802e",
         intel:        "ba41483d472f99df31f1f955a5b03edd87d3e795c9f98b1aebda93e9a713fd01",
         arm64_linux:  "0cdc732165bd98eef31ad13581a0f71cb14a4b150c215288824962a9536031f2",
         x86_64_linux: "de5891ebd358da1696d9de7af4c0af7a9e5fed60cb371cc76572b7ac96fe61d7"

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
