cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.27"
  sha256 arm:          "5747d2ccbbcc7011feb155c543ba8afd9c70929fe45a1ff4ddf072023d912d28",
         intel:        "59e2df11505aade1c7d91c0a8f27c596635db3185f9653d503faa460d519578f",
         arm64_linux:  "50c0c4934af1198ec347ac7cdc7cc4f49de8192280bd2aaec81d0ba4a3b3c0fb",
         x86_64_linux: "3a551c6dc8216041675132b53fdaeaf395e781eeed4c23dd02bd60d640d80722"

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
