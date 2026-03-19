cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.9"
  sha256 arm:          "a735e046bafd76bc8155a336b5a7f525289d1b6ce00daf52c7ae8c7b0e334195",
         intel:        "61dada5d5c297d530f567cee0c21d374a9ae1e58239403f3c1a8330ca5b946c1",
         arm64_linux:  "6056955acced9cc046df1a380d200fce51003133cb442614b77e06f0ceffca5b",
         x86_64_linux: "17044b1e089b49ea8ebaad78d92448b8f6c8c3c6151e04a09b0b87e3592f583d"

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
