cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.571.0"
  sha256 arm:          "8e142f65733cc056d9b528edfecac95c5b1f72940d1d3072096371661be75a06",
         intel:        "1c825822ab017498baf7559bddca6e8d9d48e85be0cef9b054af22a6c5253e8a",
         arm64_linux:  "60868d43b2b46c106f620540bfdab69616608034b9a0f89dff1e38236c49bd4d",
         x86_64_linux: "5e612eafaa560725b4c7f03ff69805add6ba257a70b9206765a7a7ed34af8fd5"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
