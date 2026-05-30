cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.57-3"
  sha256 arm:          "ca9c54cf4591ba99ed49d932e9512c875a9e924760955c6c19a80a7a968e4ca5",
         intel:        "10ecf96ae63e9970af3bf2cd1a0862befd3d49e7a0f5aa01462571c11770b180",
         arm64_linux:  "4ecb02362d32f02d44b878e2fa31adedf3eada6df85412cd6d6bb90fa1f42690",
         x86_64_linux: "e2eb52a9c0daffc39e884ff929f76128acb22a96d26686abc9b34d41b0373b50"

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
