cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.404-0"
  sha256 arm:          "feed1eb21c4cecf112f3558972e597e4a94a8a319be45c23beb9a346744c62e2",
         intel:        "65418866299ec05aababbb2c821346f2e38e6902be29b2e751882c87adab3546",
         arm64_linux:  "160aefce054b7384abca205b6f1c977cbd8ccfa0ee7379e95148a81cf329d9a2",
         x86_64_linux: "bf8e78b6151697a5cea3910a5b9ebf69dbfe6301d9ebb5492f05d1d1fefbc825"

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
