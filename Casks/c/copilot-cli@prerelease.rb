cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.55-1"
  sha256 arm:          "73bf0669d7ee1ae796d84068999cb5426c3bb5d961ae54da375b2c225f04584d",
         intel:        "c5d18102c1d1fcb44d271ee031e7e86c65774cd5995c7541b2e9bfc521d31aec",
         arm64_linux:  "e186f812f2e71a16d13ff5954ec6141791ad270d6e5de367c6bbdaf2d4156172",
         x86_64_linux: "63965b2c8d4a46bf65e84b038d0154db25b2e434b46f4144f8f827edb4a26bb6"

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
