cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.20-1"
  sha256 arm:          "3bfe22b73b98a43d233bc2f83c68ecc7b2b61ab4914336747dcd62a7f4999864",
         intel:        "30b676fb3ff674a85333bef8685b536c28df1a2fd977f0dad1b5e347cd55e60d",
         arm64_linux:  "ed9eba7fc4641600fc67a73eb7803bab5c8e5618a6ce590c7f58d0db8c162b77",
         x86_64_linux: "b76034c9de4c08df4d3f88dd87bd195daed5ceffd14efc0b89fb48f72dba3db8"

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
