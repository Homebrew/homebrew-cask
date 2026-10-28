cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.105-1"
  sha256 arm:          "6b7862f4eedd3e550bcc6f2389040aba3749096bedab1a1e7d6759568565a3b6",
         intel:        "41dca59f0f4128b6ed47705a12b4b9955ff02e86d3950dd45d8844c5e42159fb",
         arm64_linux:  "3f56190c5902e7698192a1485fedcef3d53a59d8d2c64f3f4edb6ac1c7a8e773",
         x86_64_linux: "1ad8c28bd735a22d057daf96050a51229fff1a36330b7b4c27ea34d845dc77eb"

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
