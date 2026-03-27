cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.13-0"
  sha256 arm:          "bf4ed00820c0b0fc54a759b012f61b57d6b8b6fb676b41e377581e1cd743b91a",
         intel:        "769c37f91561630d1f47b4dc8f624f9f4ca873cf550fa918c7024f771bdc645a",
         arm64_linux:  "bd493d3e1d2b0ad7630008c7608c512a04ef65858d9c594b6fc8b06fe7a45902",
         x86_64_linux: "28e301de069d30cfbf1154e956e0f370d07bb7e0b2187a6aa142772c296bcaef"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
