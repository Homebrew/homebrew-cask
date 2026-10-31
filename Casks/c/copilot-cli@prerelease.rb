cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-1"
  sha256 arm:          "be12e9595d934286d4ea623a6e9f5bea0c2f16f754edd2d0d8aaf67b4802b2fb",
         intel:        "8c3e648e8191a80cb5e72ad62d7d0f465d3a9758a54ab1fd498f099f1c324935",
         arm64_linux:  "57dfc50165123cf7d4a56afb9d20d1b99658d8c3e534dfd06eb51a1861f4f8a0",
         x86_64_linux: "1ccf3898362c281e8f8cfbf8601fe033cc0a8ac32ac82c5773484af8b6fe5cbf"

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
