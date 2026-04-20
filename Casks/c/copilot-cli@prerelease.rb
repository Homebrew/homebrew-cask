cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.33-0"
  sha256 arm:          "a82beffcc2d7f95900e14cb724b4dc7c9138d5f3825372a297aad849ed6f045b",
         intel:        "cb006076d6d189dbbfe0681094ef01328c473099351fef14a769ea991a90f017",
         arm64_linux:  "a00e7493b8cb3bdb79e67c2e6c5b880e286831e04726d8d3014d882484f7c14d",
         x86_64_linux: "7a9c3230a83ecac6a6bce8917cac8cabf369497a7686ed0cda9418090d2ff1a5"

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
