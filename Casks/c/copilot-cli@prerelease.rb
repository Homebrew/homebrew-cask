cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.10-1"
  sha256 arm:          "be8ad9c40c0b47a02875518cd34e75267fb8c930907ad79774ddc43ca465d509",
         intel:        "b1d4d62fbc9536652fc7b7428d257fb16b861e9b5083f506747faad66123e3bc",
         arm64_linux:  "408a91e8c7c6adffadbd23c25cc9b2af299dd755a9a9206557111cfd65e449b8",
         x86_64_linux: "3bb60db8a165ae6d5cf48da1c6b6598ea13692f003f1603ccb4da454fd2cc291"

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
