cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.24"
  sha256 arm:          "362013702b5b6101cf89b76f8e5ff8f40f5f7c093edf72081299df39793e2864",
         intel:        "516e7ac8b62ca6f2ca6f35a5c0f3fa54a1b7f2a9ef9a9f2e4efde58740d82303",
         arm64_linux:  "666cc055369bd9cb5cd22d0b3349b58da92f0d882a9b27cf31778d4126625adb",
         x86_64_linux: "b51e83a6182c362d254a8844d2ad0b3c618ebbdc2e0e2ac4fb4aa42157adf88c"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
