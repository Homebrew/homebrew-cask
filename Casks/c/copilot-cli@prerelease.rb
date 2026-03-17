cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.7-0"
  sha256 arm:          "6da4c77ec5f3967d539eea770855830144406014d363b67773e278d8789fa02a",
         intel:        "20b9525ee3217518c43a10235cf6ef36628389f9edb2a707d6b39e6d24716363",
         arm64_linux:  "1db87a2af8360fe80624c73ffb23199edbab1ea7058e5359bcb5dabbdd97731c",
         x86_64_linux: "da07529c0ded0189d0a7bb5ed1c69cacb93ec7b7ef1a6b84e592c503e472330e"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
