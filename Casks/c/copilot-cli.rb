cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.382"
  sha256 arm:          "09848b61bc14b3e1d016f9e8152949e8d6a2dfb53a95bff92be0fc0cecbb70fc",
         intel:        "acfc07ce2a8add9cc40b8831d47a11dfefdb0d8c0ddb5d9e9730158523667b0f",
         arm64_linux:  "a12d8f7815c8068882aff38fa9c2a00f5650a111540988d4fe6b83d9aaf11e31",
         x86_64_linux: "a6217cce658eeb915023f93093666aaf725f729f5a6b93bfa02e68d8e97459bb"

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
