cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.31"
  sha256 arm:          "f9a5cdb353e95b9e3fc1dd4bda72977c17eba39bc76cca24159db4fd79818788",
         intel:        "8a0a3a0c328c4dcfcacd7dbf565b379281051768acec0bf38bfd54daf4856d09",
         arm64_linux:  "7673c5acc54c78b30fd5d355b9f3d16a4fd00a1ec31225ab7609d7b28954d023",
         x86_64_linux: "adf7910836adf3e9d4cea49d71346da6f316e2bf3250b1355ea688d8a64ed396"

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
