cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.373-3"
  sha256 arm:          "53c4c323dee7c8b97a2d3cf0c8f0cacd46842f3059b8bbdb99a4995dde568941",
         intel:        "6a91ca15be3c4c222b1b8434b4b34977095d843e5a15e533b3bfba60c1c3963c",
         arm64_linux:  "8a54ab80e40c75a95b853c9e788b22a524da45fabad2910f8ac457cf51ef8e71",
         x86_64_linux: "739da53452bffe1cdadd566ac273afa924cebb891da1be5d945edb1bf7e288b7"

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
