cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.375-2"
  sha256 arm:          "9dcd459d1f67074bd2c866f758910643b22d391866d890c2f6179cbe98775b7e",
         intel:        "5c43dcc7fe14c10de8fcdea6f31e9b99c7e4f3e1469fdba54cf98a03bbe23039",
         arm64_linux:  "fd2fdb46480dc61e0a5a9772b5ba488f0629cf225bc87150a6c3df86d0b3e356",
         x86_64_linux: "3d0e2014736a631c26542de4e81dd8f9abad74ebbe12c2264032d6002ba5c2bb"

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
