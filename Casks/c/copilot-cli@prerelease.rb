cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.411-1"
  sha256 arm:          "82b3332f3fe4a16aa550632f892bc8e16c41a5d78b470a325112bdcdf93f6811",
         intel:        "104abfc13a5338f8242691a4598f3332fec936f73e8d992c9a930b6613eb56d4",
         arm64_linux:  "8e65e8334e924ec70299a28363b3e792398bf825d72a5f432c8ac1d84cb4c7bd",
         x86_64_linux: "55584ac5c24e89ab913f622f401ac4c3410d1e3d962f255bb8c6ce5b4a1f08d1"

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
