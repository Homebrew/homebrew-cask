cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.489.0"
  sha256 arm:          "8ef79732b34c218150c78b0bbb15d954b4ff743f1474ffcd136b050fa4d8d47e",
         intel:        "e0df2e259b9c075de1dafc3bee407e10cfd61bce6be82e40408330367b859ca4",
         arm64_linux:  "61b5f1c1f1d39460e7011f39839ca3a2607bb5433601f1d60b01334fa1b80564",
         x86_64_linux: "7c278cdf26ce60821a15100c7de81b58b633521ce5e4f7ad42ddb260c9397888"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
