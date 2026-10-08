cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.94-3"
  sha256 arm:          "7c8a03b85ad337692756cf1d9f3041e336c4a6f8cb37ffb11e81e02d71015d5a",
         intel:        "e9c11cf9b3c0f29a8f1c1ecfc99daf18848e98c32107c6e866ff138d5ee277bc",
         arm64_linux:  "6ed8b3137d728d052e7523b70b83fc254ecf77552a2e40ec51830cdb177b4ed7",
         x86_64_linux: "49450d38b201a04021feb8135f38db726fb27c0e5b131ce54934ea5dc0ae15c3"

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
