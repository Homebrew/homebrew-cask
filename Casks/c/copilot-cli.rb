cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.17"
  sha256 arm:          "2ca168d36a6d6063ff6b6a0139a5afc8b49c1f03152a56e09dab4766ce5fd3b7",
         intel:        "cb7b107eb5291eadb63d687bcfe2c22fe5f5ae14982737e36e2a14559feaeaf1",
         arm64_linux:  "8530297bdfb7069b2a170acc94ef3cc4865b66739aa4610c00e19ecc59b6538f",
         x86_64_linux: "6c99c3662ca8ab06ea72d935892e4b84abcf8b527c4b36cb46e86fb3e9e47f58"

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
