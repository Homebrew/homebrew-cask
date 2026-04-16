cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.29"
  sha256 arm:          "79142587ec407b1eb81e33537dab484570e01578510839dc5b2408c18f2d73f5",
         intel:        "57ee6d5338165b932a301f8051be87570446a2a5693581a04b58381d9175ac1f",
         arm64_linux:  "7e3621a4fecd729c060e52d237217e613ca73f7d8e27b7230b32aebedf871404",
         x86_64_linux: "08edf34f0bef8c749a291c157e6f881162153c876c224f9e821cecca3fa52dc4"

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
