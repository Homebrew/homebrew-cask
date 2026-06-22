cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.64-2"
  sha256 arm:          "bc184e707a0371887380635c9056d16e39a83ca1e59e83428899354ea680aa10",
         intel:        "004c4c57cb6930031749422ad0258bdf4818f21726788b5523f5e9ccbfc50ce6",
         arm64_linux:  "326c378e47d14c69e5d018f897302d1966c7138aea6b685885026e442e121c10",
         x86_64_linux: "7b3215f732ab62db998b8c6e9d045050a2c7f31ff2e9106dfc345ab7b3528853"

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
