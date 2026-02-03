cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.402"
  sha256 arm:          "5d352f1561ae3f4dce125b250397bc759c9b1ada749e82e05066ad90391f49ff",
         intel:        "26ac97ad5a0187f3286c97ec531e9a123008f933cecfd79ed1d043dd1e2119e8",
         arm64_linux:  "02957d0fbaaa0ebc5398686bf8a147927fea4cbfb289c7a9e11ac6d8cf832555",
         x86_64_linux: "c5fb240a9d403de7db3a63bd2774e0c2155ce831fa76fbcda83e4b8623797534"

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
