cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.80"
  sha256 arm:          "2346bb691981c2997d65c1c5bc3cef1aeddc9edd37dcb2f970b911aa597e59f6",
         intel:        "a1a9c1f25740f9a27b34eb14b70b5d3175794dc8bb410875531aa198b3abc18f",
         arm64_linux:  "3ed85e711955e13be523bf492bc6c93b40b69925bcb7f817c9d08abf4839cf89",
         x86_64_linux: "039933c9247686131c4406abb1d439bdbf68103edc1ff585bd70d5b0dc940f72"

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

  zap trash: "~/.copilot"
end
