cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.81-8"
  sha256 arm:          "a288b3bb816a2892f9ac6e4123f93d41e12d365ce8a21ce5902bfc814cca09c8",
         intel:        "6a97a1d7a69304ff51ffd0ec97c1f08b54786db26973ede2fe8934b00dd43c96",
         arm64_linux:  "de82876fefdc68d958f1b74856c56f337410654cbe2f506a0df9e680ee2335ef",
         x86_64_linux: "381c07bf316beae67efb095cdaaad7656245a649b19b4dbf00e31065ccdffb07"

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

  zap trash: "~/.copilot"
end
