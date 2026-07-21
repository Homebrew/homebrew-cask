cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.73"
  sha256 arm:          "858081270a544c396af0132926449f8d92ba5086c2b802c633a376a9da5e83d6",
         intel:        "91f9420cd903e35a235407fa87901493625267f502dd3e5d2eab1882b0a8c658",
         arm64_linux:  "16f824ab3cdcf51a75ad907c84242805911cafc6519aaf58d09e0ae4eb1fc1cd",
         x86_64_linux: "8f9bb5f7e364c267265d1e24ac2aea69ed559ddb956719c6db12a353de6c5970"

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

  zap trash: "~/.copilot"
end
