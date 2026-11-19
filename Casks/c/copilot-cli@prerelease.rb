cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-0"
  sha256 arm:          "4ddcaec80d972262e747b9abcbb7f6b5f3197edd3943a28c7464145cb0ef1dea",
         intel:        "adbffe3a4a5236c927fba51505255d87829098d8120368ede39aa4f7161f624c",
         arm64_linux:  "916af294b3f2de23fefc276f358cf8b8c5898899ac4a73c30b108ed6721cc235",
         x86_64_linux: "b1a8768325f4f7ce11bc32a984b206de462ae5155f77d9d6f555bd0a047cd057"

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
