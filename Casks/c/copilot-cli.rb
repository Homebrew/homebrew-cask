cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.13"
  sha256 arm:          "d4754ac30cf09727b7d7c0dd377c1fb259418de1207592216d94811a88f2a2ad",
         intel:        "647c390d6b4bfe853fa0a80e6886724ea9eb317989f2d36acddf495c56fdf3be",
         arm64_linux:  "fc8b0489ab1def77add7d51a7ddb5c1769b2784e1c7ca2ccbd2c1cd3e738a60b",
         x86_64_linux: "deeace6197701e276fa8ccd530da8e596199870173a701e3289d1d6ccb76e93a"

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
