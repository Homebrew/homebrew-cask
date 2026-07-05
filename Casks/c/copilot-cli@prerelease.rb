cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.69-1"
  sha256 arm:          "070e3c28fe5194fa588f6e5ca6046fa253a2cde6ea015ad0303915201d4d30e6",
         intel:        "b35ec83d685ceee94bffc05959d24330e98ae53254b6295a9f480a28fae23611",
         arm64_linux:  "f2bfdcd8111514f13aedd5bd0f11369e3b5d8a4e9ed63e726d6192ea0470aebc",
         x86_64_linux: "779eecb6622c8a94592a0b97b7e554238edf4c1b3472817cd066bb9f6ea36b92"

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
