cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.46"
  sha256 arm:          "fb67e9271e17b9946e031061a99a678118cbbee2cc86dbc0a00f1985a073fbfb",
         intel:        "38908ed0ca4179c5f21c55155b429a398b968ab3064d4b65c258f526054097e2",
         arm64_linux:  "7e8826ae97ca20873a0ded153f53f47fb2d4a36f68d82c0b96778dd46d2633eb",
         x86_64_linux: "5bd3edd01981b412c705014427ba1d1d545349590c0ecfdba9c7070032fbc907"

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
