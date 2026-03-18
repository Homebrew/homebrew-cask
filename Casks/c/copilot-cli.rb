cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.8"
  sha256 arm:          "7ef08c8c402a4436b17184a7ad0a85c937ddefa29f14f09c3903c2317226df69",
         intel:        "e25a30120669ae184ebcde39f456f3b05a9031cce6e03c5c5f11575255aeaad5",
         arm64_linux:  "ceaf83d8a0d988c1fccde31edd763d2fe5cf921cbe7a6aeb4de4ac9740ef1b52",
         x86_64_linux: "948aa3b282f42387c759fbed6d8485e12cd3300ce561473b48af988b8e5306b3"

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
