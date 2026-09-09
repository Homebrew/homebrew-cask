cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-3"
  sha256 arm:          "9463f16298b41b3febde1b9c38b019ac69474bbd37a462f71e081cb04b142428",
         intel:        "6a9a6089259f99b7d5187845f8430743494b5cb78c3b63d24c13fe9cf85ace11",
         arm64_linux:  "5a7321805d3612da7abee877f82fd137970b45de04626e6e3854963821c9d48f",
         x86_64_linux: "31c3854212845dbd5f41adf1d3e06cca29402da55d2af5b13588777cb49c005d"

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
