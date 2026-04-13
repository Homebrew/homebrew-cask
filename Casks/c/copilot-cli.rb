cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.25"
  sha256 arm:          "95dde6bbedcb4250fa951b9cb12226e569c81aee91277af284d1384f6675e25b",
         intel:        "1f60961e93bb0c7bd34262d89273c145b9d4c8616d964920e580d3c1751cb3a3",
         arm64_linux:  "fd148e8411058a98d3267fa70854ba594b0df82c1269f8bcd7cbb4168b84f95d",
         x86_64_linux: "692a5ff7460327abe5cf244fd92657d5c79e287cde3935439e560adbb507a935"

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
