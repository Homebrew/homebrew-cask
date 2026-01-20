cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.388-0"
  sha256 arm:          "1e497b0c6f003ac2732572a8a814e164d4b9f3107429f40332670514c583ac48",
         intel:        "2c5b82421e0a5c51d705ef75d2ae3f226564ca41dc2d56aef28c04b8f8553811",
         arm64_linux:  "fe849f3f29723b143389d2a1322a441800af5f4a2326e363fffbf2c97dff87c3",
         x86_64_linux: "08768b456c0e8d099bb9affa56e2b3a8773dc1b4275adb03172a3d68dab9930f"

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
