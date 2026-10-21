cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.102-1"
  sha256 arm:          "dd034ef227aa68ab99d23e17e390ef048a6fd00b126554b3b95b6f135b266f9e",
         intel:        "5c77c57121f719fe2afaf6251b8cce179c8ce0ec5e312f6e95835f5ed7e404ce",
         arm64_linux:  "b7b5f811d97ddcab1440db0d461b087dfdb9b1f918a7c6f6567776c82c1bb725",
         x86_64_linux: "68077d3a3da51e7e7c3bc961c2dd3849ae63719d9e9514ec448145856cf5ee2f"

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
