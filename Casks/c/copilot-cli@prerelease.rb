cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.36-1"
  sha256 arm:          "a55e901c41178ffc247062e1e74ad9e0032aa1aadd2cb08c726aa98af9a3306f",
         intel:        "8296f6e01ecbfb0f419e5d427877b6ff31dc9a04a4ad1aa6def1b629e3925ea9",
         arm64_linux:  "3df26a7f79e88d2d8ed73485df8ce0ece13b9b917f7f789d588f4bc95475c4c1",
         x86_64_linux: "a48f1797d2c1986c97f1a0863035cd5a91b204afd1910c7e619d79aaf1b32873"

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
