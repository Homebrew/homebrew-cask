cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.13-2"
  sha256 arm:          "647336741960cdeb07d4ab5172dbba941fd1e8bf9256b20682a63d9a5bfef74e",
         intel:        "61b8fb0697909818c68fff56854a4ae889947092a9d85138b4a476a2c7480a05",
         arm64_linux:  "a351274a0db228b6732a64fb999095734180ce126ca0c74a9c14de413bc9b4e8",
         x86_64_linux: "4ab4ad1d489367742f100ee4d3007ebbf8c108a084f77b5decc1c67ebfc86cda"

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
