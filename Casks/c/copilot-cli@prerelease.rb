cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.72-0"
  sha256 arm:          "1f5fb1b8a01288a125b4841ef79e0b144a4c1626d340c7fdcf4adae1125e6479",
         intel:        "08cc9b672fee5bb3795d6a383678db052be2b51c0b4677e30756888cb7976b41",
         arm64_linux:  "c76adbac7124f5d178a38164e3e0fb22c14ab7c9cee2d80e6315079285eabb1a",
         x86_64_linux: "2b1e356c46ed374a653122ddcb77dcdcf95e5432ce3ce49098c60883eb6fa3ec"

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
