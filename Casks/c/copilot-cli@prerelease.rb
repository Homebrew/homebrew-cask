cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-4"
  sha256 arm:          "cf1a78554a28e16b208d93500a281a4cec653108eec81488d21f59903436e6b0",
         intel:        "378f25798c47729f269b5760cef71c95ad51d941178a43d3ac5f1e24af69288e",
         arm64_linux:  "c31d78282eab7b7e9b3ba2ece689e9fc1d243ab3ea65f55ee052556defe45768",
         x86_64_linux: "191c505b31bd453c950799dc834ca4ec9919ed0ac5b7e8f4124f9dc4681819fc"

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
