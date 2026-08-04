cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79-1"
  sha256 arm:          "e9517d3f29c7275be8dbc924850c466242473bfb449fa0543ba428f740637f47",
         intel:        "37c477749a95333149a793aa3fc45d1790d1fce127155949fc96f63f9a84761e",
         arm64_linux:  "4c1cd216e22700cefe70a3aebc2e071f931ec15657284dc07c3ee4e3f6fb14b2",
         x86_64_linux: "51aaed6c00d0be209c8a6dd00076dca8b27b79b5d3e41768f47b70259547dd77"

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
