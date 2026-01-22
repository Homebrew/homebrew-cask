cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.390"
  sha256 arm:          "93181de5c50bffd589a6d910a04f11d2b432ed055093d539aee7d0ac188d3f5c",
         intel:        "d19d6a821c38b5494073fff35b88641c71c964843a0144202893e96661bb9db8",
         arm64_linux:  "db0b5bdadf83d141ef615a09a3a4ac583060e26b8c838e844f04f8611c271a50",
         x86_64_linux: "23c6a67b74a42bb52417f50c4e7f58aaa3e8e9a90c8c2087ac92757eab550c96"

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
