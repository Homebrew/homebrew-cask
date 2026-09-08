cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.542.0"
  sha256 arm:          "a8780bb5d35a22824cc21af4bbe7c345933a7a2ae8e4225e8671e88edc7b28eb",
         intel:        "bc95a966eccd8746c03d17bf5078bdc5f88c1e4dd2c382345083bb9344d596d3",
         arm64_linux:  "2a2d326068b6cbd6b97af3c6f53f274db4e3f5e0e966f2395b382374cb06e4c8",
         x86_64_linux: "2bc7d9001ac3cf162709c6e09ffdab1e7cd56e363ed11211d0c86a3b92b7c1f1"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
