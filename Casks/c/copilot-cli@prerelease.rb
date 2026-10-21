cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.102-0"
  sha256 arm:          "a2e212c148b95c9300b70c22040fbc06a2a8d3c27c22fa0597be3cfb0852e203",
         intel:        "243ad4a23159aa95c6b210f5b75b4bceb72169a9d9dd58f1534c32a89940399f",
         arm64_linux:  "945b96141a88b0c80bfb2cf8ef2c1f8ebd9aa97e4cbeae126bf8c1cf26aef64e",
         x86_64_linux: "cff900fa75ae6f748be454ce1aa4d78d7034dfe2fbaa172eb984245a2b5629e7"

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
