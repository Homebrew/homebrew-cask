cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.403"
  sha256 arm:          "355a87ae9407adef5685ee62af03cc08ae78ace51c75f7a0e39efab334fc53ad",
         intel:        "4ace22371da5b73a22a433f2b487b1f8db0f05c5d676c33e98d1922049446a48",
         arm64_linux:  "ebe02c23477c6d09d41a19f2e855cbf3ce3e95b4c61ce8590cc714091b535825",
         x86_64_linux: "25440fa6f66a152dd99e7efb28456868b2f47aa9a752fce13c6b2d6c9ad1288a"

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
