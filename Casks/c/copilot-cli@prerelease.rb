cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.43-0"
  sha256 arm:          "716176d0e06efb64b396c5c4812cf13a7408a10bd6065ca9263c82ce174c95b3",
         intel:        "dd5ded82fcae1544b9e05a118fee89ee8a6b060756e0e61db2d48447a9161067",
         arm64_linux:  "833caf7ca4058292244676168df626e7890d6ac8208398c7650c0dbe35dfb18a",
         x86_64_linux: "37a84e576c7c4cd67716c27e4e1a58e5283915ed7764495cee4ba4fbee73ee8b"

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
