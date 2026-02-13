cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.410-1"
  sha256 arm:          "b6e1e46243e43dfc89095cf5a51b79eaa8f584601eb38cebf301be3dd40ad551",
         intel:        "fae90d832c0f2a71ba2115f40e8790edd4db7d9016543bbfe501964dd8f8d5a9",
         arm64_linux:  "761366f1465eefb022445f0b14fa248dbc09a18ad84fdbe2483c304a8ae64aaf",
         x86_64_linux: "567382af3b84ecf12e100e6867507889e98588d2c3274b6c02d12b7f2698e49d"

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
