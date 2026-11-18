cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.114-0"
  sha256 arm:          "38a945bd5ad4b50c67b47cb912740551f4fb7db751d8399bc41b47eb54abbc3d",
         intel:        "87303db9e1d6b981351b4d9058fa6041e3fc7a8bf93c24c95dfab629570488ef",
         arm64_linux:  "9701b96766d7729c4fb21e21363a551ebd48d88d83268b5d2d511e8e236922d2",
         x86_64_linux: "7b7af4a71d0fa4f95eae79cb797bad88580c08c42a8fa3528211d46612ca7abc"

  on_macos do
    depends_on macos: :ventura
  end

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

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
