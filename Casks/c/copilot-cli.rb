cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.409"
  sha256 arm:          "ba7723f8526e40c48e92a5ab40bc2dbc3fe94ef00725ad44ae1a4aaa26fb3729",
         intel:        "b74e33753a7efa9dce32aa393fdd5d8e2ec0f1b1a631cd1ea7db2055fe692557",
         arm64_linux:  "8cbb887881cf9e9ee9ba5673592aea57a61d3f10e556764e885a13e0d9a355d1",
         x86_64_linux: "dce3ec244a7a12eb3145faece4eefafb7fa913c75012f9e8e9a9a0fdbc36fc03"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
