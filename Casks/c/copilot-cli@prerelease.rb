cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.116-0"
  sha256 arm:          "e1839fcea978b297e8932e9ceb512a4947f104526b17b06f947472f37e7dcca2",
         intel:        "7bcf5189df7e9ae4af3c5723e19a65efafc125cafda2df08653bec014354a029",
         arm64_linux:  "63aaa907f48053c7eb717a602bcb6f46d5926dc760eb29c9bee6a31158ab19bd",
         x86_64_linux: "58fbeef0b79a208f39468a04dd68f178f6d9450287a9285fba42d16334722c5c"

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
