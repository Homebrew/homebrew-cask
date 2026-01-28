cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.398"
  sha256 arm:          "5bb4b551f41c54a7c3c6d3f2afbf77760e48b8a1ba72a86d6683917b6fb6c0f7",
         intel:        "31458053e9bc92522952b2a48041a5e7e01c74865fdf5cddc84cb46c4f2e0426",
         arm64_linux:  "266215829aec87848379bf3c50494c7d1a0c524c20d473c829598ad1e36b2ee1",
         x86_64_linux: "ec96c5c957eeaabd35211eb9e70e9f4190c44b199acb9009793a026d98347711"

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

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
