cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.400"
  sha256 arm:          "899e6509092ab92c8c6d099fdc17dda11050947f1052219d47569115c5d865c0",
         intel:        "21ac2624a3f4e00efab8bf6f21f5e9f73647e132a17cffe2c9e57c2090119245",
         arm64_linux:  "9c2a40229932861d00cc87e6cc1d83f8400ba3a0f4e713a8388654625f9a8c46",
         x86_64_linux: "e97afcbaad69d03f2d68ec8f4294a9a9b14b34b578e49785fff3deb0c0eab1bf"

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
