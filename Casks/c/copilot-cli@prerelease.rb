cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.35-6"
  sha256 arm:          "971a3a91839f84577415e808682f1a1416fb5b653046e73543de092bf4d35f6a",
         intel:        "9f1ca0c0290885b69c79d6d278089a7faf9e86da018bfcefa873bc6c8be0be81",
         arm64_linux:  "0a83a8c3ef2e3da7ded7f75acb8d3725a9f3c044c1cc0a0d4d426764c0602a88",
         x86_64_linux: "25a5a88aa7dbfe8ffb0f42d771cf52789b87b0b9cd01d2c681f4e3fa8b07faf5"

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
