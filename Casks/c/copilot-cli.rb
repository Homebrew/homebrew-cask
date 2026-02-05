cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.404"
  sha256 arm:          "c6ab97a2c064773b66cc0686217fbaac4c75aaf4ff3b32db7be13121ca79ad60",
         intel:        "a28e997aeea4af7d0d5cf13336f19568079c79c5a548140b3ecc3b64b0c02192",
         arm64_linux:  "5becfeb7d3570a2320b8bac149c6767dd836d022cf89f914c4b6ec3095b3a378",
         x86_64_linux: "b5fb0aaefdd89c1955f37859a85c6d44a63dc2651f4c521b5783c19f96cb0860"

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
