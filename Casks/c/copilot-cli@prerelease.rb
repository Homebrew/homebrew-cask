cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.32-1"
  sha256 arm:          "844fb47dfb48776e0901a6cd2f0b781ce9c4f01bb82f871334e6305cec573671",
         intel:        "7ad19abcd0e0049afd112c940da9728b4fad4e3cfc8ff797a79f399d346178af",
         arm64_linux:  "6fb24633ea31d38bddb1c2dac01bdc8d88401639ffd7e8b78bc7a0ec041b56d2",
         x86_64_linux: "97985fa18cf14e15124ca37df315ed22e76d722a70bc084f4f7cda946a9049c5"

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
