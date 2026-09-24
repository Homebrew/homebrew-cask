cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.89-3"
  sha256 arm:          "e47c6611f33fb06e6a786a91045f01bab9c4e89cd87d20c5ba86da38487ce5e2",
         intel:        "dbdb664cbbe55e9ee11b28f3318f276bca91d60646062c1667d7879fa6d5ce00",
         arm64_linux:  "82573cfc90196a55e5384424b5c08aac60da666d7664becc33cd69dacc613c4e",
         x86_64_linux: "8280e6dbc12428c23a58ed480981c19a1a91f8bddc406ea0eab4e29739f7b2b5"

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
