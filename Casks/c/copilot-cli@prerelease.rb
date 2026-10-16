cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.99-3"
  sha256 arm:          "1c337c304020db073033b6939ec893da75e80d076b574e88ee713a40136486ab",
         intel:        "17236cb5681cd7fbba1c3da9e9e7d6deb5f12b6de80fd09e391da344ccb31737",
         arm64_linux:  "a7958db91b2e49051e1f4efc1a592680f8df6e56d20c8e206dca1b9f1d65fdcb",
         x86_64_linux: "4ff4db43adb72de50c24fae093fd1b8542d1bd4a9c3186298d118980d926ffcc"

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
