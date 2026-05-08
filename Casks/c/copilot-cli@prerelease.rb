cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.44-3"
  sha256 arm:          "33df72591e6b8066d052d3213054e00c17d2bd65adea47eb455f397b4adca739",
         intel:        "ffb64118f6461606e4fdb02451e10f2904d2318bf73dc2fbd9ec5755c9e392c8",
         arm64_linux:  "26395ecae0fa929c964c85ebb82df9174599d65acf1c9d2c8de3ff7a6c2cdf64",
         x86_64_linux: "7f8262940da3290caee92b2d6a69e92608598503ac1ff4ddaf865fd30eb3e532"

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
