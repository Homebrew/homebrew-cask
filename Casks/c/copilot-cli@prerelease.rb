cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.21"
  sha256 arm:          "990cbb9d94cd2dad0245e8f7c4ed2b88ffaa86531bf846e86f2d9058f4d4588a",
         intel:        "752dcc98eac38606adcea64e5ee9888a29c835db969b5eddabde6ba8f99ea977",
         arm64_linux:  "414bae3ad228e4bb49ef7e1fe697fbc1449d345f95766071a7c1da6bb21ab168",
         x86_64_linux: "a6fc494a3dd5a76246fb33424baf08abb5b4cb6889fff28cf295155c28b1cf77"

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
