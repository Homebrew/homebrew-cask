cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.399-0"
  sha256 arm:          "e20d19a196ea3b350eab1c0cacf154ea5a8ef5cc151c894a3469af4455a197fe",
         intel:        "79fc437bc949a8758240e703e9a8237f285142a597d9450c24c482f6a7e17b25",
         arm64_linux:  "07b310d6f57febf9fa6b265cf7b3df569cd8d43ccb5e6ed22d84aa287ca25745",
         x86_64_linux: "3681366f4b520a950837c791dedebe689a7a6477037b7ee4df950b552ce7dee8"

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

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
