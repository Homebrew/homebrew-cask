cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.85"
  sha256 arm:          "54b1cdb4d88cfe0806f13e1f70adc4e8ed7d3edcac38fe070475e29f553949aa",
         intel:        "c94d2a95d9c5716957a9e9dda0e722070c60c680c04b4745526225cc83ec5500",
         arm64_linux:  "31042001026a26bc1d04b05ec2fc9419f82a55c0f9ff2fa75c0fae608359bc70",
         x86_64_linux: "6f235cea897645eef67e8f480e36a15b5d9c9f7a6165ebc9b6b1c28afc8bcdda"

  on_macos do
    depends_on macos: :ventura
  end

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

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: "~/.copilot"
end
