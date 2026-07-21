cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.74-0"
  sha256 arm:          "c64839351596d9949d0b2be600c79121351254e31523316de932f883823848a4",
         intel:        "b007e6e73dd3057d584a93793cf55538cd0bae6876704db01695c321f5bef39b",
         arm64_linux:  "7e4ec0f9e5344756c5da5ff3756058763ab37b79be848c0deebe87feb7ad960f",
         x86_64_linux: "a4f45b950fe6806689b7b5d5d891b4f7f8b2a9ee6e88d7cfe5c4cab2d3338eb1"

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
