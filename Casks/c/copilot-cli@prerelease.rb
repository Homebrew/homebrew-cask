cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.412-0"
  sha256 arm:          "1b452c69e526831a3faf74b4e815b62657062cf69f37879b228c4c5b27eb347a",
         intel:        "8fb99fc8962bce0e3656fac1e85a461e60e50b0fccc5b6970da1dd53e5b02ac1",
         arm64_linux:  "3fe43ffb361542d0e29520e416c565d08cf17a30d21a80fd34d6f2a9db78cb43",
         x86_64_linux: "f4ad3ea3b433aee4569250d627db6f0deafc2fef5124646da9b7b88261395de0"

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
