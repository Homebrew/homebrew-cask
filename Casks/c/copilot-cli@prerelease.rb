cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.401-1"
  sha256 arm:          "ac96d20a128663de668a1bd2ace50a6ce3df1554f872fcaf28441d7e54d11a71",
         intel:        "b3f4c32ac167983b5fbd3dcf127a235673dc7c010d1ffc7bc4322b6f89da60fb",
         arm64_linux:  "3243e2b328a93b4814cc609e109fa26010e6d144a2125cec49b3e6c6184b9155",
         x86_64_linux: "bcc983899163e898c99475157a96f24886887b10f64f95108b974f79d9e88c03"

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
