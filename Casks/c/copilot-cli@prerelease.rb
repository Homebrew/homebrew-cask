cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115-2"
  sha256 arm:          "45344a8bfdfa7c7c67c520becbecfa21728be9aac5f478d85faad8494ce82909",
         intel:        "63c482c774709907a3b94b8fcf95286fc435e12e24d5e666b53e066240c8979f",
         arm64_linux:  "4947fdac7b911a90097eff4f47e41deaa2c05b4322bb3da1b4cb5d6379b6b00d",
         x86_64_linux: "661201733f5b0758f23b116bce62038d029aa1ccd26aebf158e9cb4d59a2bbd8"

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
