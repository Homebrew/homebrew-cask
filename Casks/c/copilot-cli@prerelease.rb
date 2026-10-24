cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.104-3"
  sha256 arm:          "27aa23b5063c1ec008deac606c02d2bd01b44b78f83c39a7e93d666078a3471d",
         intel:        "94f52075773e1c2402bfd56d8b189b40fc0b80ad99cd06f8bc4a8ec611d2d429",
         arm64_linux:  "e1b1a0e48c1a2eca1a2a171358bfc03cf663e3c1ad196932b0fb7b8c1b3a12f7",
         x86_64_linux: "3adaf859846b2106bbc2e3ef53abfaf3ecc0b4da1321ac0f3c2587902f57f35f"

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
