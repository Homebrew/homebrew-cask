cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.14-0"
  sha256 arm:          "eda817c3930d8b303c3b45b43e1624bfed3f22558286f5cef201e64f455a81b0",
         intel:        "6e5da13f415829c5fdec9d0f7f4870cb4ba9667a7d26786912499fd8250f77f5",
         arm64_linux:  "88394014c81ecc1bc80e38a8b0422d67c557a1d454fcb3c3791ac2eb430933f9",
         x86_64_linux: "adc8726c623f94792ce09ccc0058cab886896fd125de30ae24893e095b72a1af"

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
