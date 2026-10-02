cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.92-2"
  sha256 arm:          "d9621e90ad74f7b71fa33e125974214acb4773202ac532bae9f4a1bd952e220a",
         intel:        "3e348736d281db3012dccc26e5472e8725a79c8b70703ddbf930dab7895c1c62",
         arm64_linux:  "2da66d6d5e776430139976e0cd521236c4b3b64accfdec391495943dedd2c56b",
         x86_64_linux: "bc248b398a48b5ce97861cb711a1b87fc8c9959a01c1b0ad5b29531d1afb65c1"

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
