cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.95-1"
  sha256 arm:          "21baa68fbc4051264ee8e11a94ed682b65b7839c44885dbc162d4f0ff519706c",
         intel:        "eac4646479229a03594de3c73ecb31be8c329121410430618a9e6856dd01f12d",
         arm64_linux:  "611b57de172966b6478c9f8d5e02f453086aaaf7a387a5fce28fde905b58da01",
         x86_64_linux: "813a75c586a6f16de9079f34b0e189db883104fb7fda55220d5fbec73a6c975d"

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
