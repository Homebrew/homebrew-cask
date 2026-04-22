cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.35-4"
  sha256 arm:          "e0db723d881270754ff040b04528c738d1e13259f66dfa105a6e7da49077358f",
         intel:        "ef3e3d395ead207283b398889fa6fb2e7540674d415e621d2003febc008fa6d3",
         arm64_linux:  "2d8ece514596d55a31aca2944656dcf6c44ef1d688b2b4bf6a10fcded0524aef",
         x86_64_linux: "b312ee205965f6f00b93a5f830c1ef4ec9357f680d5228b55e7c9357f47eee41"

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
