cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.412"
  sha256 arm:          "d706f64a26630863d57e64e78a4048c1f85b7df190f0762237221199032ff2da",
         intel:        "587b80744ac99e73d8db076ebf840f8dda40b0af24dcb50077b00d51e75a7193",
         arm64_linux:  "f5b54be87cb55cb75016e8909afd411fd2fd729f502fcac6b2a6972fdfb29b9a",
         x86_64_linux: "7fdcef0e1cdcfbc8bc88c7efc621d6562b130be56a3e80555617a8872b92335b"

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
