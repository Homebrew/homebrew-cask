cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.96-1"
  sha256 arm:          "49042d12eac59f916a20292e8aea1c80732e31b27921112f0354a401d1848f0e",
         intel:        "0cd9f53aa1b3ae2feb45ea9b2787a6aee10d3620f245c56407cac13a6b67270a",
         arm64_linux:  "1c43fd3ce14c3391cc257418d43461412d158c86bf0984e7c922d2f860e63c0c",
         x86_64_linux: "c5c134cc8b58fd929ba8e08633738961b8728079797e4a7eb7f8538ab7047c4a"

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
