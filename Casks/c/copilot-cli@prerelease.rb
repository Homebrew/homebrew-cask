cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79-2"
  sha256 arm:          "7d67efb2992c464808f35d8e0aaadcce0f84ccdc11eff9aea68e4462e56b8002",
         intel:        "8a94dbe3c0fd706406c71ad6c8fc8ce95bb89a2c2b9c705a002e35126227bd5e",
         arm64_linux:  "cd73ba2c15a5233415c65566d19db1433249282e24d5da2838f91c53a6ca6b13",
         x86_64_linux: "ebc05746a96a0618405b805098f8334f28ca16df72465ba2ac5f1ccaa02dd5c8"

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
