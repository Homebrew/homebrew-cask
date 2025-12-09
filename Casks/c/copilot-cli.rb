cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.368-2"
  sha256 arm:          "6166d26fef4b5e8cfe8cfba8fc4fb8965afa97619b92d2dcf8fe6bd9e35fa939",
         intel:        "26c20abd8f39d6b9bda361e711b2a5f8be2391cc15969de41c545016bb48e116",
         arm64_linux:  "264fa57df3f7b51eec70a874efcd3341a0ec4a8d110e49b515d8ae041bdbb650",
         x86_64_linux: "2e61f8d103198fc925f722abea53d642c5ae7d8e3be2a46c60dd7381b3b823d0"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
