cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.6-2"
  sha256 arm:          "666ff657b94d282b18c6c2a97bdd9aa233916dd009c63c1255be8cb3acbb112d",
         intel:        "a0b885c2499c47d4cb22aae407008e508345bde1c2ce5e2ebe9860b0f1e6cde8",
         arm64_linux:  "273980e973ce1b7207b165bb44d9795a9e94a9b51976e7ead62e353e0c71717c",
         x86_64_linux: "fae6e228a02d4b13fd99e220118136b752bb4e4fa6297fdabf36b8af4e0021ef"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
