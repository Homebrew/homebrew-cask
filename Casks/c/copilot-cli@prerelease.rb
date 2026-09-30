cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.90-5"
  sha256 arm:          "6ee1cc0565f42481cdb53edf99b89852dede00c5068ecc8390d06f92438b2929",
         intel:        "a7d98999fc899f7546c56b5ca67b4d215dac76476b84ffa619d966e374d85c31",
         arm64_linux:  "5b999e9cc8b09321e5d4625e032b8198ef2c1d2c332289af0d9d693273e11db8",
         x86_64_linux: "ec118ee148bf001cb7aa7195c6f19b112b806ed68558a142004bf2e1cc8e8c0d"

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
