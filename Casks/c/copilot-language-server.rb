cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.475.0"
  sha256 arm:          "a6179044fe33da1f93f57ae590e5d878372f399b010d73e75fffa1fb7c5218be",
         intel:        "38bd3520851529f9d2aa5af27f17de50b7cc0cf4816ac39da6533fa4885ab6cd",
         arm64_linux:  "285fd01dff3a9235074dd6069846f1ef01391c30879ec1518efba04d016f3a34",
         x86_64_linux: "0de4f0021e1e4df39fee3225f7a03bfeef007aa39895faa8b02c7029908722a3"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  depends_on macos: ">= :big_sur"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
