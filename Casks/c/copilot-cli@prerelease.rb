cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.422-1"
  sha256 arm:          "47e8dc716c3131f7c2540f6c738b4207675610ee9310c50a79a5c8bf7a5c9f36",
         intel:        "aba1798b93c2b51e0acfb0fc0142d8b0e071c4ef402659860adebd16379d9a51",
         arm64_linux:  "1b3a93daa868fe7af66711dd0c2f45406c56956b86093413c75800f38ba2d618",
         x86_64_linux: "9f62e6a4ab76d614dd3bd75b144b527e67c1cc9c7258c791fce3a4b77926e551"

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
