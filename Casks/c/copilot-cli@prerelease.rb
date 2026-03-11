cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.4-3"
  sha256 arm:          "087c6e8b548f8a325b36a22e7898f8119c90619a1fd5f2279c12ad57dc67beb8",
         intel:        "2cee009364e06d8fb1924cff43909dfe2938127661f6d45e8e291e5aa036363b",
         arm64_linux:  "9657d22a3e70a22e73e1419306e2e35770a7d3900c03498d218de24adb6354c2",
         x86_64_linux: "af3c0329d7821c40b9acb358a51727dbaa332c9cceb41509f00f0b65dded0681"

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
