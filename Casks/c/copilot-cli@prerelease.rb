cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.116-1"
  sha256 arm:          "a60169e5479ba02dcf8031e4c9ea1cbca1016d806ad290e18971e6ffb334ad6f",
         intel:        "1a3cbc2394adf946f1c866318082e3027ef257ace036ecab55b417373508b88f",
         arm64_linux:  "9e7d85ef2d3394bc2187f4fe56e1f27a1dab1603fae53ed4dfd526139fb783bb",
         x86_64_linux: "a0a6dc337249b1b230d692f02a9e63963ef88668fd943f1e7af189ab984e4805"

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
