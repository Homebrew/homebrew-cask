cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.372"
  sha256 arm:          "4cb453fcdf9f19214fd568bb539a17b76c558c1c4b7039b464fcc637b8709880",
         intel:        "123ea74538ee8055138523156f60ef0bfc028f2a26f144fc7171faaa62fd3ebc",
         arm64_linux:  "52568e3454fb5958b4c9c398d82b1273a39af4270fbeabbbb31551cac998a464",
         x86_64_linux: "efa4dfda9fb6d900a03a8e251952b5922a3c050fca70ad877945b71fcc8e7523"

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
