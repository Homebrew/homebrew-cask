cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.374"
  sha256 arm:          "222c5aeb4c4cd69c0d882ce91ac727b8833c6546a4b48cf78a5fd0533611e621",
         intel:        "d889f2268ac8ea649de4b7f5083d5bfaec0fb4aaa52a3709c0ab703225fe969c",
         arm64_linux:  "56298f7b396a3ebf5ef58b1676078781f9dc25954e2ae185f49cedef156d2323",
         x86_64_linux: "44e6a162ffabd33af933342a294c83dc2c8b7f4e2bba10d18c85f839001000a5"

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
