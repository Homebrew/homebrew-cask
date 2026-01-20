cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.387"
  sha256 arm:          "e04cdc413c88044b195b5d6629ab2e686c2cc4189eb6a385a60c4e57e9658bb5",
         intel:        "12225d3bffb70caa1de56620e1cd2a41067473f1516b3b04fab976d3729eb1c3",
         arm64_linux:  "6bd82a5c597148f9a9a7c658b900a17ab7d8a2c1d95504c6673b107465f4cfe9",
         x86_64_linux: "208dad6d843501933c73b5eb9951496bf9f23dfcd8fc46a33a3b0a04e929138d"

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
