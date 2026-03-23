cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.11"
  sha256 arm:          "91bf60ce4c5e26f09ed2a47df22a0b28b4c7994b4c074e2b8f1a4f28e3cb672e",
         intel:        "24346a6e7b5be3513ba51264eb05dd0060a2ead26436e7c0c19d7f6b4289386f",
         arm64_linux:  "39630d4fb1c20aed09e625f7054984187728f59c30de04ab74bb542361bec481",
         x86_64_linux: "45dcb7b18f1eabdb4247216cf6b543505bbdc934c2c72afa4cdc441a3291b66e"

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
