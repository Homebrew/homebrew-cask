cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.60"
  sha256 arm:          "815c3ad12961be822a547d65213aacc2996cdb70c94a47e8589ca3ee31991f12",
         intel:        "7e817f4ad7f551a275088a8ce44fec6df2a0466247fa5bc8b099232bfcf75d97",
         arm64_linux:  "1ac48cd687b047fe2c549f3f8a440b31e8b5d8188a91dd8ba1e46500d37dc435",
         x86_64_linux: "bcbc762b86b3997586883a92995ee0cc1ae35fa80c1f62250b7eb15f02b1bcc3"

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
