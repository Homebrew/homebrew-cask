cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.99-0"
  sha256 arm:          "d5a8f8eb190d9c8c0b94df7ea73892ac7ba6d9578786afead466c8db05fd18c6",
         intel:        "aa0f440f180dccff7d9ed2271800b7fdc7be1ecd95c18f09a0b2052da86de6db",
         arm64_linux:  "eeea4f5f08ca550f761ddf286c3d2b2f6e88ab8efa96d752b85b9417557351aa",
         x86_64_linux: "1950df0a17875007cc0a5793a15f88830be695b2435724b705e1c5fcdb55ea6a"

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
