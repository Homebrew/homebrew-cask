cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.98"
  sha256 arm:          "a87018a0194789313c979906e45e8874699fee50549ea11d0be7bdde88b6b3c8",
         intel:        "dfa26894b0c178239daaac527d5aac0a6cfce4bc1ede6fa33d54ccf77a5bb3b5",
         arm64_linux:  "a7509dcac0e5f22886788ba4c1e2f8b9b07367e84714e42b9e7cee4d8f9fa5f2",
         x86_64_linux: "87ddb4b3f98462b7cb13c0a6857c68ee410ec9673e2e5f64ee5bedad45825b05"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
