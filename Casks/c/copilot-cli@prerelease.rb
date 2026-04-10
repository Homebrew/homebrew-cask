cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.24-0"
  sha256 arm:          "85f23d3f77c620bdec1d2f65800880e702c6e696ed442618910f5a50eabb12f6",
         intel:        "11d0bcdcc8a684abb1664fe3ea2814b472a287bb838adca3aea5d69b5042490d",
         arm64_linux:  "5633bcac46ce1223afab05237a4265cb2eea0ff1538bd3debd8817e0e91835ed",
         x86_64_linux: "37918b0ddc67a834d71bbf8be82ebc13448354edebbad3f2e03b35bdf74d0645"

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
