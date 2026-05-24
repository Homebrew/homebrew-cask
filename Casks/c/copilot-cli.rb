cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.52"
  sha256 arm:          "0d1d2af7cc28e887dcc7e943bee1b659a1a4cd36dccf8e47cf2a3953c6788d2b",
         intel:        "a67362dd56adb514fb69cf76de7875de477824db50307b8be789797677b07ac6",
         arm64_linux:  "47855ea4db484b62b6fe582d31f12da6f9edf888b16790ec009dac4eced62fb8",
         x86_64_linux: "3e32a4d1de31f2cd975d28ca0f79f4868a391478305396263216d3ffd3228f8f"

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

  zap trash: "~/.copilot"
end
