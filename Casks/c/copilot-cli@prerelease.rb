cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.378-1"
  sha256 arm:          "8216bdbcf753cfbd3b8f4d12019ba6be8d68474c7604e1ef1d83e0cd7898dcc8",
         intel:        "8296b629cc3476d918a7b404ad0a66316d6c51a209e8373671a6e1057ae6eec2",
         arm64_linux:  "357cd22913721b1ce59a3b7e19a1ae337a6df6c9c53c5d827b5ee7d567572073",
         x86_64_linux: "202313448422c0dd2c88e7c640101c4dc55e5c74b62ca30f52dd7edc96f5812b"

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
