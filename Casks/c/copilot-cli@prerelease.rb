cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.104-1"
  sha256 arm:          "cdf7ea30f4a8031dcb0b3e91b2199a2931e6454fe32efda3808c769e742485ee",
         intel:        "a5cde3c70d009e522e14dd4e4603a0f83a29f48dd938cd4e2c6a297a3f950e5c",
         arm64_linux:  "c00c65a1bb37197f2d96f17f473f53c76abe72380add7521da7d802029ad023e",
         x86_64_linux: "1cab8bef327a980238efe93896884c98f0bc82b6da1c7f9bbb82062b137b0677"

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
