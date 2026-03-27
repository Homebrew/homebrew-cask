cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.12"
  sha256 arm:          "9ab09d670bff7f432e9a6b6d02f3319496c07e8959686a881bd43e513a1e6153",
         intel:        "4c66d684094b56cde800f5708015d0a6607fc8f5183637995fc937daa728b09e",
         arm64_linux:  "20126df3d59f757a93ffbb71cf3bc05dc431c24d3816ede25b06c938e0f46fac",
         x86_64_linux: "42a1593bd04d5b3fbc7b8042f4ab7160ef4cdf2e637b2e6cc7b8cca71dfb59f6"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
