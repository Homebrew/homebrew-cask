cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.514.0"
  sha256 arm:          "187c062cf43732503c204d3bf6cd7b819da5641558d72f071161fb030d2db0d7",
         intel:        "3a183a8df8e912aaeb5b307195f0de374dfa4b9f7225314b8f0ce8d3856a7a3e",
         arm64_linux:  "5fa2b622e6750e6276db1e25c0faa4d376d338c1094c6423493c002b9c122367",
         x86_64_linux: "87ded9562abc03a045db5cb9a6a9a4efe0b6bef3fe1109e692ee81cd93b0a2fb"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
