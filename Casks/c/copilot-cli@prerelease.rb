cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.26-0"
  sha256 arm:          "7e029c146c2c5fd0d0e780484db51cd01510f3a8ddd25a4bdc5e57c16fded16a",
         intel:        "41475c9e6111f6b9e3e6b282d50b572a89b499a12fa77c5a91da3196b234ac7e",
         arm64_linux:  "6addcc3b68b88ee11267d25cc3821f19d0e908f662f9d6f9c7b40b9612115b63",
         x86_64_linux: "2c3fdde734436cba8015e3a85689d6ab6e53f1ecc2d5e70ce3aea2d97f00e2bd"

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
