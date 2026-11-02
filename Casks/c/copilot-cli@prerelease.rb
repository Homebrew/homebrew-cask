cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-3"
  sha256 arm:          "5f180062ecfc1d817698ac0abfb96c6c520aad385f43dd1e359d53e8b6e231c7",
         intel:        "9ec0cafe98fd80443160df7fe898b5e8d230b826d5777d4ec19eceeab2454fd1",
         arm64_linux:  "69f1f13d7015d79deaf1dafa72a87092527d3414b0d39f2b522e57ff8232588e",
         x86_64_linux: "e1606d83bf30d27d31ce7aa92d5fa4f7e91252bbf6266e2451d5ccec3ef76702"

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
