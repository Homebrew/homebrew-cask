cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.53-1"
  sha256 arm:          "6be57007822cb357700ff87cca3092cd80cecc8c383bebac811e7946c8b90140",
         intel:        "a642f89db5f17d718ed27617cab2b7ae953513e340f75df9127d58e79237a9bd",
         arm64_linux:  "2829a9a33dff6c6fbb58196ad1aa6038726dbd424b4276087682ae0cc322fd1f",
         x86_64_linux: "5f332c845885ac5139f415dc36fa7ed7d616cf8f3630069193e914197d666175"

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
