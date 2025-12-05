cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.368-0"
  sha256 arm:          "c719d5898458d8bc8cb9a392ccc489526592acc69d424d8a47e463762ca4e523",
         intel:        "71d6e88b79fac046c2a3e7351a0c0ddbc90981eeaeeffae980c4bf22d66f84c6",
         arm64_linux:  "35b1feb3f4162562430eb0bb23864c508976278f294388735b26128dc856af70",
         x86_64_linux: "693924567b632fa271fe3d66df9b73cbf180a36ae82cbdf0cbb2e8ce3696f024"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
