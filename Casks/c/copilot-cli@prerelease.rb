cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.15-2"
  sha256 arm:          "5b2ce8ac1c7f61065c007864672ae5c9bbc68384c6c22d19bb6781add8dcaca0",
         intel:        "6986c8e893a7117091a140ec0019362c1556077dbbce745f107db051d3718b44",
         arm64_linux:  "9db93cf92a7c8bca2dff4c0a54d36984d47e05a0f803cb54552fa6daae525bfc",
         x86_64_linux: "6057e2a3aebf0ed20c15181f1a469035f59ffbb5b2192999d1f35b13215fa66b"

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
