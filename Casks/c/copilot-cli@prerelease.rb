cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.76-1"
  sha256 arm:          "355c663482145c4709f500cf885456371ac767bfecfa3e070302f6af948a2191",
         intel:        "b78e18414067e91ca2a9b86323f48a479ab41f27cccde560d6bfecda1558c5eb",
         arm64_linux:  "7598c5fdde6a8b07302b0abace9d76656ba471339ba4d474c8ddf2f499e8dbe8",
         x86_64_linux: "71c0e8698eff1e867dd523e3065d7261983fae5b07f3e16382c4c412f6c47ff3"

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

  zap trash: "~/.copilot"
end
