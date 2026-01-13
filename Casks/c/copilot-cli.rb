cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.381"
  sha256 arm:          "702b858a2953591fdb5580c44979614b3bfe75c9c6d35c04f6cf35738891e467",
         intel:        "38b3f450ed71d732465df84efc241c1ea380637420bd596518ad252c08ab44cc",
         arm64_linux:  "9da6b078daf2768f6ec6bf59a16fd45c99ee1da08880b0dc92498caedff93732",
         x86_64_linux: "663e7dc382161e6b349d9e4cbeeca525546fae7644acc33a33dac2ab0b92bbbc"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "copilot-cli@prerelease"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
