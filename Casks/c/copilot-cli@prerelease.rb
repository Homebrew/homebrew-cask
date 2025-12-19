cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.371"
  sha256 arm:          "aa6ec9d2006df75adb1a85722994a38a5ebfd2f9b1280d5ac041dda97555264e",
         intel:        "367e962a0d8df78b8c6cadf06a231a8d7727f544c58a64968b24e40869532a77",
         arm64_linux:  "9e41e2301bb4bbc62fc171965cc591e0db9b008a6e0823608afd6611e459cb6e",
         x86_64_linux: "482839f82531c30ded1f612f5e26209948ac8103fe65d68f7d12677b1318ee91"

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
