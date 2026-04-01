cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.15-0"
  sha256 arm:          "4409da6ffa956dbc64f6e86ff3691c6419db170e686449b7b8b2b8de8a0818a5",
         intel:        "0aa5e7e00f3b79f9bd1eb63c3bfbe92b1427c49966a6c9df46980944eff203ef",
         arm64_linux:  "d7eaba393d61021d509a8bec85d66578ddd1b9f4698c804a0be8ffcc4c19cb68",
         x86_64_linux: "337249037eabd62eefc733941ae4a12dd50ad9b57647c44f38c80f4e0f594c8a"

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
