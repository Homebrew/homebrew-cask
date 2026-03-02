cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.421-1"
  sha256 arm:          "2775cd9dd5eab0632e4e5208ddc9667f440ecb7997e326a3787d292c39dc218a",
         intel:        "27c4492a37bb9ce1d3e2ab41d1399dd1b9fec065c85850181073c7a28a3d85bc",
         arm64_linux:  "f179bc22490523d56af4cdb4a8d5b22177d8d1838edff07533b68b39df283979",
         x86_64_linux: "0b9803902fb7fe11d4e41e857a05af8f0921a038cbdb34c4a347255e450823bf"

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
