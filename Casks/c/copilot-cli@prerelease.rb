cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.423"
  sha256 arm:          "82ba8214606385a01dd40f386aa50de9223b9e427e866e6e275f31067b444035",
         intel:        "fc5f21bda9ec8e0e48d056e6915a540a9dac5d195a41ae6899cf7c76fce82ccf",
         arm64_linux:  "c94f2105caa1606c2187b4f232d89ace02b7d923ac5cc0dd958d62413626c8f8",
         x86_64_linux: "415f879e7911a8e54a025f784c038596d0e16b3c0c75ec96132fe7fb2e9785a7"

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
