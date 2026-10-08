cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.94-4"
  sha256 arm:          "937ad58efecd48df34c8787682a3785ef67105a14a0f35ad40883c6e440d18d9",
         intel:        "4a47cb3cb88053bd27fc859222e5963d9167158d3f91d37b98c8bb38c015cd33",
         arm64_linux:  "c3942b766646a1d55fda25f8c5fbe7d189fb8f5c0b977b6eb1011fae3bcb44b4",
         x86_64_linux: "41554e4496aa1c2e06c2ff0bfa6fc1b2cb01dc57c479fa7d3e72b8d6915b91ea"

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
