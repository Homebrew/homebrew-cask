cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.55-7"
  sha256 arm:          "8eb8ff168695b5a79dc9c93e745d298de7a5d601ffef7d381460e0f24003f368",
         intel:        "7f4eb3d941e7f7c8c6a9da2b44726daba0ce973d5bc239cd00dbaa13608fb5df",
         arm64_linux:  "b3ba601dee01e41eeb39ba6c98a4ac1bb357d51e1ef62d788d7b3a95fd9e601f",
         x86_64_linux: "30c31cfc034f3491f904756bc8316777438e1390aee3f6534d2c78e9a4e234c4"

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

  zap trash: "~/.copilot"
end
