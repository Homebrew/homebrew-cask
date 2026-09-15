cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.84-8"
  sha256 arm:          "5231b242ed7c47649c517596716d3d11b6ec690cf6d38ccd9653f05d1f638c55",
         intel:        "ffad833856bf2248b02b4c1b1a584c9e1e0e0e94bff3b15993f1b8e80191ed35",
         arm64_linux:  "a4e2713045d307ae18c0b37e94c0a652186db1c194b70f5c20d98917103b471e",
         x86_64_linux: "dd877c9e398e6a3191102b6e67b5d703ea34df366a3109cea7ca88e52a7327c0"

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
