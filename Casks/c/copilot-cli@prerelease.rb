cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.421-2"
  sha256 arm:          "820e70b643c7717592e9512d9f247911b8e31a49e947db9e9c61396d1540f565",
         intel:        "5a7cf67433e52c3ad90631f056f07ae89bd30cd0ad763cb9f1ff57592d53d23f",
         arm64_linux:  "1c54f7f87a3ab0a28604c4c34c8f8da95883d33cdddb028095ad2e78558f9f7d",
         x86_64_linux: "ce7a190b03fc72b00256b31e778ffb622951051fb0615712664ed02316cd3746"

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
