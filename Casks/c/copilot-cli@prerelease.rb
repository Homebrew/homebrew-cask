cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.16-1"
  sha256 arm:          "edebcec7541497e75f723412110fc97abdb3f37ea86179a0dd1e31b0e187ec2e",
         intel:        "f1d0aeca986599dbf3bcd57511e9ffcd99d406dfe42eaa8e7982b72fede436c2",
         arm64_linux:  "e0882e69a7ed393902c1997ace0f25ef2e1f8db9e67f81f0e93f5c9a9d7f2438",
         x86_64_linux: "3d0aff2aa34edeb39cebefcab942c71844ed0e2606605f5aca71d36c5df3652d"

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
