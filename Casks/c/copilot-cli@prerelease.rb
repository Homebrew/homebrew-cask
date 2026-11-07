cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.108-0"
  sha256 arm:          "b46bd3473aa5984eb1a3449adff211c3cdb0f3e53971892f96d87b42cef95f72",
         intel:        "f04e2a2979ce1315e1c6357d729a5f29fde200df2c13c629334f5247fee4adae",
         arm64_linux:  "5d97bea68c50fcebdc89d0544859dc602b8e64e453c82829b53c5ef75c9515cd",
         x86_64_linux: "435f2048560caec25730b9b9ea65588132980cf2f7cb6ed182cd4530050f4d9a"

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
