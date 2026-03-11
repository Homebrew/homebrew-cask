cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.4-2"
  sha256 arm:          "5d3bcef3379c6978b90b00b3e3591bbc243b4e18be4d988ca857fa22e9ef3ba4",
         intel:        "db8da1e53aed673fe02c577e44307df67453883de5c51ccacc2bf250beb0b133",
         arm64_linux:  "224bcf3c18567227a93786fc0b35573077f7bd459e91684d261b3ad0cce9ddf9",
         x86_64_linux: "80447462e99f0d115bd28cf93a8b285418bb255311fb3a8d9c6d46dc1b163850"

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
