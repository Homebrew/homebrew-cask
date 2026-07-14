cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.71-1"
  sha256 arm:          "2c9f35177b5cfb46c7ede929fa314e3a2bb6897e70ffbbfea79053f85821984e",
         intel:        "a99a100ff5db1bb2d01f40cd84d4da711f9b22fae7b029132df4a3ceb257f005",
         arm64_linux:  "dbc5d67a5d847872bb4aa0e18e693c74f07d069a026605026d63d57dbf562406",
         x86_64_linux: "eefeac21df46645e29da24964f3eb4c37d8308be5053c03706dec1c6d33c18d3"

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
