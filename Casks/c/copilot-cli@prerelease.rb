cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.4-0"
  sha256 arm:          "a6ce784cc10213d731a6349be89e4189a6292525ffd92325f7ee7f349592aacf",
         intel:        "84207ba428768285e9346d1f2181f1e67ea2c87e8c1a0b0fbfe4de3241330ad8",
         arm64_linux:  "8e5d1d799b044fc5b00e37adeee8d0899f6074be664c2cdf4ed879af3d5830aa",
         x86_64_linux: "a343d303afd4ca2c615da4bac734b650e9c2d519242e7b09ba109f26f4ef0e90"

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
