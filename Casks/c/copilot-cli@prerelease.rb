cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.35-1"
  sha256 arm:          "e941372d4d3a2a992d0e43ec7af7b91ffff038e5630a11f99d2e8c0a4ec26337",
         intel:        "d36b3fd6cefb43426905688bf804b6a4c7e62245d24df87e867063e98732ae21",
         arm64_linux:  "3f53b0c732c968cafa15526057e6dfc1a36a847ca5cdec7d5cee2437fb667000",
         x86_64_linux: "953860a2c3b1c9a3db44cc13db746c1ed2a231360fba70442ebacdd664937926"

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
