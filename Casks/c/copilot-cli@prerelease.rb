cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-13"
  sha256 arm:          "ee5957de4bcff0d4a7a67702b6d8e6ff29a4d2d93306b93a93465ce0b9e4f2e7",
         intel:        "928ca6dd3c536812fdebc2af0b033417d1a81c9fe4e4795483519cb5818d9244",
         arm64_linux:  "3ea41cf2d5117e0b12992b3e116605cf8cfc1d2f761f89ea98fa6920cc206a4d",
         x86_64_linux: "9c059a6690ec298e3dee54498256c372ad958e3951441bedef70833ed442af4f"

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
