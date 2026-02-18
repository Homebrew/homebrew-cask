cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.412-1"
  sha256 arm:          "2f75de742a646963768bc970f256ef7e1a00830f2e5537fc87c00991ffa51559",
         intel:        "d29496a9561bf941e8173618c7510cfd5bee776dc84bf3d0a47580db1e72e5c3",
         arm64_linux:  "a67c7f44cc473a776eceaeea1d4db57751fd09243b6dc62ad675fe10bdec89a4",
         x86_64_linux: "faa369cdd7bfc04838ad0adbb2ff595744f9a7df6db38fee504cfcd681cc21d1"

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
