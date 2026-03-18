cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.8-0"
  sha256 arm:          "5777f9d4a772cd01d40f3a8fe24633c5a91171f2ccc4355aca8cf56de1e66890",
         intel:        "a414273bb39a2415819a993949d0867ba81ccd6bd8eb968277907b1eee59f604",
         arm64_linux:  "a59478867f9bf14ba3946b27b7ecf420fc2416cfd9d312abfe9131282f17499e",
         x86_64_linux: "d647e65912537d1d564d0ec2aaa146091293bb4f9e0ead3964570ebf2ef1a722"

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
