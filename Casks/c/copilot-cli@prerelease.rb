cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.54"
  sha256 arm:          "af0e573f8b45363e31733e309653e487618ead12c9bafda5d430639488712810",
         intel:        "6485cc455ee782265ac953d9eb456caf820143a7ebd9d0085b1e4696579c230f",
         arm64_linux:  "62edd0e95bb902b6eb3802fc8a034fcb25b1b49180bcd8541f498127c0953899",
         x86_64_linux: "a24a665390b427c623a8b0ffd9967cde2dc0ae60126e9bde585c2bff137f4f10"

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
