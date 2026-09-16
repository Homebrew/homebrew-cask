cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.86-0"
  sha256 arm:          "d88555deef449c367eb7f2384843607105659ff774312bbcf56744b9af334ffe",
         intel:        "6f12c9885548dda5112f520756fbc2951d5bd89835940a2709067354be90c59d",
         arm64_linux:  "0fe4a2a0ff1de5732d32e39913431ad72b98d1e40fcff072eb0413c0d7b76fc4",
         x86_64_linux: "e1f13f79e098af02b5c1a63f0c6d2f1412f215333522e8dccd58db09b9f4f9a3"

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
