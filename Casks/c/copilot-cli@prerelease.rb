cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.93-4"
  sha256 arm:          "046e677d5d5fb636f57e72c0a2ecac4042931870d01c98f1dc3845b7f7e4e2e8",
         intel:        "fc02f249659979483990c3479087acb1fa8a91d45cb22c5dd7ea62674cd2603a",
         arm64_linux:  "7d03e05b7549a003478911f33b706d5408e09d178c29b2e157bce5b3487d3ba3",
         x86_64_linux: "33e8a6612c4c8accd19f43a65042884ca8b512f50e5f96159a9972dae5725ddc"

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
