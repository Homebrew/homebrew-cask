cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.118-0"
  sha256 arm:          "0d912c554e4a8c3b5b2051469654e89d4156e002e236d2c79d38349974656446",
         intel:        "f5507a5a88da37532fc1a916229d84bc54a10d32608111b042e8ac1a92a40123",
         arm64_linux:  "bf5b5b3c6ecacb72f748b8399016b4c39c97d860e1afdcae896f65253ab27d50",
         x86_64_linux: "26459b4e1ac53cfb7215709a78014ae5bdf1a864b878fbd9062addb5ddc4e519"

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
