cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.11-1"
  sha256 arm:          "27ac0fc8af8685ddac950bd9c87161d8d2393dcaa0981d0b0691677b948ced3b",
         intel:        "0b0ccad5306214d6308bfe47b5de4695166944736f9dacd14ab93ccabad55841",
         arm64_linux:  "c6b43d9374554adaafc479a37765bc8c8f64e3ab502f94b2eb7f05c3eb75bdfc",
         x86_64_linux: "637258b788889c7636d0b61490c54eae3ff3cbc2b99ff7b8a83f993b5c0254f9"

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
