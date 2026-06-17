cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.64-0"
  sha256 arm:          "8d0d881f163d386786a6e8efcc3f4519ceae7550fe8df84ee54ba7b9279a5b79",
         intel:        "a545b327cc3e7b577a8deb6af6ae7d37e2ff5cff02fb623720a2e76fec771458",
         arm64_linux:  "d3fc4af361cc3196330f34809092320b191500aadbf13497242fb0b0f3c80a73",
         x86_64_linux: "50120f2c3cd6afe04674bb57478bd431015dadf183a2284c0f32eb6d025d66aa"

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
