cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.378-0"
  sha256 arm:          "fc1a223b84fe67fba57613cc3bde70fa7a9537931ce15e017f2e424b20f8d8d8",
         intel:        "5f25a559a41abe5eb2a9fe21b51ab3eb239d8608fb9d6d25f2bac0f8803dcf45",
         arm64_linux:  "7b3b2b632ed2c707aabb6bdb91aa689f6d5f6d7abca80c68e0094d07fe5c4666",
         x86_64_linux: "3aa1ca909b7e0f3511210d111b9df7938a08c5197753e242776f7c7d188ed328"

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
