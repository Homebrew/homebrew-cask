cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.532.0"
  sha256 arm:          "3e4acbba1880fd329399e784d71d9e43b9a1d498efba680520662890c61a0f38",
         intel:        "0e01557efeb9ffefc9193a23ffee3aa12ec90d10cbe5ab289ac2aa6ce5e7e8ce",
         arm64_linux:  "2f246da1970cf4a505722ce6fb0a1a6d00a1539886b1dbe7cf31204d75e871e7",
         x86_64_linux: "5b3fece111898a3ac3a167cdc9ddf47f78bd6855f35fa5e627b00a50efc28d7a"

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
