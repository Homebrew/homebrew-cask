cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.71-3"
  sha256 arm:          "7cd5ec6e9c8ff86522e53459963d4cc8c762a3dbc55caaa192c252f5d627bac3",
         intel:        "a8054d13f362c448aed25a9f686beae8853e1a966660544afd40a73d9bb163a3",
         arm64_linux:  "4489f19588e8a6fe8084201fc2e440423a0283a5bf5be9f000d1e1bb21a7e3b3",
         x86_64_linux: "f69dc3bcd8ff06a5b0d09d98724d854ec2a504f6a6f01ba79a5dda2d1b2c2568"

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
