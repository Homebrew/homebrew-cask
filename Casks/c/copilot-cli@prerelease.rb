cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.116-3"
  sha256 arm:          "82195ef2df1751c6339ab884da6f30675f61180ba3ee5b07b44495b13016b2a3",
         intel:        "39a1620b553dd593b93d59cdceef6ad5d11d623bae03bbf0ec15a256d7f79251",
         arm64_linux:  "155bd38c255f8d697b331870ae7bb4f1815c7bed4228f083572fa5cd94afaf53",
         x86_64_linux: "2f54449b31f00b866cde60dd39269a0b3544ec8854db17338e52cb088539ffa7"

  on_macos do
    depends_on macos: :ventura
  end

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

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
