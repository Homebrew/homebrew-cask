cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.91-1"
  sha256 arm:          "a545b6b3d1d1640b5748a1e5917dc12ebbca13fc8addbfe2a1f7f6e7f4b9d929",
         intel:        "03e84e0958c2667124e18319638370137ff6a78ccb164cc332919a3a2ae4691b",
         arm64_linux:  "59e271e2d81b17b4d69a3d6c7f3b6f4659271209792a901aac4fc2bfe28dbf23",
         x86_64_linux: "420ebe454a34f788b88154f03bcd156ef1b980db97c745b4f9e90893619fe7a2"

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
