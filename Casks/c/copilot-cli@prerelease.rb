cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.401-0"
  sha256 arm:          "7a26a47a252e2bcf1214693c5fb639ed85a99306694084e880353b15ddcffc53",
         intel:        "d7e264bd45928dfbe1b327036c68d0df2438d0de1758a3ede8506d826ee909ee",
         arm64_linux:  "477b8cd1d0a8c48861bccfda081d6f63ce659bedd69fc1a1933aee7778c69168",
         x86_64_linux: "fa6b27c72e90f074d94ffc767f3790e3c0e3a36e1e4b906bdbb52f0b72eca8ab"

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
