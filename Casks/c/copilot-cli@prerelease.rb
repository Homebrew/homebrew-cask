cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.71-0"
  sha256 arm:          "8a6c24519e73160d7f969e1cdc51075337e61bb87101c198c81b1678de3b8c20",
         intel:        "bfb50d576d03745c6de96cf6af9df231e0f59d9e062b0f3d5ef7e71fd7aafd8e",
         arm64_linux:  "8bef3ae8eab295eee81bc695b1c17c2e62060f29dd596a605fb02c5629c44a47",
         x86_64_linux: "015fb6ffd05e71f6b97cc1a286d259c2d5a0037a6a2e2bd2b0e37f7a4bb75564"

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
