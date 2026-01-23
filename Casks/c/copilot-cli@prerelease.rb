cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.392"
  sha256 arm:          "affb57839f9bda63d87b77a2ee37899b4adb22a9e3ad95d8b0f2ea0beb686dc7",
         intel:        "d2e05fd70f18e77bdd32bb6580ed40680736920e7c1899b30c425295da7008de",
         arm64_linux:  "ca7efed0213b31f4d6ba53c464f5f39ba101f9278ffacad355a2cb6af0503ae7",
         x86_64_linux: "94db91515e71ae993f28a3224cd9f33e8708712aa2a18ddacc4efd9cbfb700e6"

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
