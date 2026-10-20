cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.101"
  sha256 arm:          "efce4325f7fd95945ef42f552ff7832f281307b2c63541b23f9b257e171bfe32",
         intel:        "f271b3f2f26e90460baa4791018f3864032621fa1c4484d387f8c822853a46ba",
         arm64_linux:  "14f7a68725866eac987f813b6b485595c280ea58b4ad351e08b0051de40794de",
         x86_64_linux: "5fc08295c464e4c7de763fbb29c5d4cf4720d8265d3ded3781a2be655f554f74"

  on_macos do
    depends_on macos: :ventura
  end

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

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
