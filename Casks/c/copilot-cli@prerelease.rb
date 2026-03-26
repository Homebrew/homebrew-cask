cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.12-1"
  sha256 arm:          "1555b367dee3971ff31443903c3be75d71cfd07d9e38f0f9533d06860826553f",
         intel:        "268d65c81dda75d31ae9a7e09c625caeff0dc2b594996cef30cc5f90732635a3",
         arm64_linux:  "621cad0f3be46bf564d24f3b9381d763535bc25c3cbb2aaf74bf5b183dcd2274",
         x86_64_linux: "6346c78d048099bb13109d6db9fa403c95c2f6626246a05675be2203871e46e8"

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
