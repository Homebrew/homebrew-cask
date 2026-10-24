cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.104-2"
  sha256 arm:          "871f1484dac8e49a3102cd9d3efcdd5b4db6eeb6db48bed5c73842565f36bf01",
         intel:        "bcca9576cb9fc179cc977f4a3f1308cdc55bc78f2b29b7955bc13a6a5eb0f312",
         arm64_linux:  "b7732b7bc2a1a287f252f909747494b131dffe834b3ded0a625901135341c5ea",
         x86_64_linux: "4af06b296b3c94ba02a139c14fc44e5e8f311eaa276f926d1fb05deaed9321ef"

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
