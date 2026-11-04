cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-9"
  sha256 arm:          "ebe96b5d509640381d4bee1a7c61b3862fd70ed3cd6afb13801ba92bf42caa1b",
         intel:        "ba8f0fd65c9742b684f7ca496032fadd796c6b9c8a424d1a6d4adb08c9081401",
         arm64_linux:  "9c5665d82faf50131edda7493299b74205b691525ce0490a3fe5a2ebfd8126c3",
         x86_64_linux: "f9324a10640e7729c081b6df441e67b81f96b80734f6f2afea56e0ec1d5fdea1"

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
