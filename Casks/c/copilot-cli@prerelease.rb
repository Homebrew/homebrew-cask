cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.388-1"
  sha256 arm:          "49fba32b1ae66c5709db9208746f07067f43f0dcc6bb1d7c4f21d157408bc1d8",
         intel:        "c69f94f2f1733667087d883cc8a89cd4f0aac6f8d927403be8ad957c9d1a20fa",
         arm64_linux:  "4ad7d97134552d09d903923ba6a194fd7c1bc464028afa58c661af1cfe9a9a77",
         x86_64_linux: "ee8e018c9c8214e43399e35acaa0cf7588a76135e9a1915911178da211a323be"

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
