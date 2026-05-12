cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.45"
  sha256 arm:          "419f1d80cc96ed4197e7ed562b6d61697b4d5bbe41ab7f8c038bbe850e18adbd",
         intel:        "8593464e0c648b12eb8543fcb4e8f014d016af133347e2e82a071a7d7d9d72fa",
         arm64_linux:  "328b4f36dbeb3431fe8967b038e2dcbf5582b9427c2239a224a94e8d9c378a29",
         x86_64_linux: "f93d872de15edd5133a6f8de5e72e461313187c3a23d3996e64862440a3978a8"

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
