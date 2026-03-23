cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.11-0"
  sha256 arm:          "7311603ecc1201ca263c14d5fbefeeb9d260894dec4139ad9f4855be6446f69a",
         intel:        "49e96290cdb2f48147ea3d7e70d4230c30c93a3aec74cce5be5fb2973d78aa34",
         arm64_linux:  "de822cdf37e2130142231e2a14b56c4fbb1e3bd6526072d7418ac7158b977f9a",
         x86_64_linux: "a0e0f79d4902cb8cc4475fcf7d360c16567bd8233c33d84d6e8d0b3f25749077"

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
