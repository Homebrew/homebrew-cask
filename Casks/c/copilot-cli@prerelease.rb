cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.406-0"
  sha256 arm:          "472c0aed6c8834f8c806d97b6cedb6f55ab7bbf2a47ec3d0836c929f74dc9644",
         intel:        "3bfdb3cd01fab33ae0f2bc3ee700ff7aee7d7cec7cbc30e19b1b877266c7ca11",
         arm64_linux:  "e373ad4435ad931b4afbba716cc481c20ebfd1339bc096a7165e37685e1304d9",
         x86_64_linux: "37aee8050b9ebe326cd46085cb58484b16789643081710b96ac497decaf9b796"

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
