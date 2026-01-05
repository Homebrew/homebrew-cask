cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.375-0"
  sha256 arm:          "1a0b27cf54b7af57a45f286b309641e36f78bd71fe91317459b6111d262ddffc",
         intel:        "1deceb63891cf1ff48d29df71f7a2211dad6b1f31cf746d4d4d13ee3cbe466e7",
         arm64_linux:  "8da332cd4a35ac08629ff376c3dc95124a1f1f42692946e7d18e17dc6dd197bc",
         x86_64_linux: "9fa6cdcc201f4c0a12bda002cdb17f394e722278edf07802771bf42b9f042f88"

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
