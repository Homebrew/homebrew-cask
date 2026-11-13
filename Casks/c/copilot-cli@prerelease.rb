cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.111-0"
  sha256 arm:          "096712b78c661b1f599db67f11a2f51c29903627b726f78d355411ae715223ad",
         intel:        "0c01a1527b0cddf605ea60acfa837119c7a54fff86f2d2acbd33fba51f1e577f",
         arm64_linux:  "ed72e90ddab437215e25b303b7e35239e9e072ed572e89f05044ba4e43e253bb",
         x86_64_linux: "15c0041f9ca61772a7a218a82f24978fb43bc0b3dea4ee09217ccfc5c202e402"

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
