cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.527.2"
  sha256 arm:          "2badc6d3f2560aa9abf4eff058fe8373509b1b7eb0bf7ab5f2bc4b5117164af4",
         intel:        "8001aca0096f23291924aaa0f85e705e1f483778d0249c306ea3b5270332c386",
         arm64_linux:  "50839d67ee5f63d4f52e53a52fd7dd307b0e85c50977265896c1ae19d441d6dd",
         x86_64_linux: "46787f9c8ca77287d61315c5c252e98856efea521983e723407eba59b808729c"

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
