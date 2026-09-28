cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.89-7"
  sha256 arm:          "a813e98d1849b4499d57fc01f5b81d4476aa8f27079f9461b5e1293a9c371695",
         intel:        "81825b21d57bcdada9dd47ad4809e3b3802de682d466645c88f4832d06b047e0",
         arm64_linux:  "ec40f187d4054d88be3e13937f7522e9e2eb6ec424b9416e00d06f71f7ea97fe",
         x86_64_linux: "4da1e73d05a1aa9710b87bc59cee62b7db1e2fcc29d4335119ae86dbbe06a1a8"

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
