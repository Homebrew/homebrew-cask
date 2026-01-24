cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.394"
  sha256 arm:          "6c11964b63fc577f140ada3655845f6e315b2355eb1d8842d6d1a41f0d16080d",
         intel:        "fa22de7f7b87a84825dd331affbf25dbe9b8d58ebf9c449e6e9fffe7a77d2aab",
         arm64_linux:  "41ea330ba9017203a414d591e5ede8b47bc70f4c96786b43b3c90da3a1dd29f7",
         x86_64_linux: "5a6e5ea16129ac4a0c9cfc0add5413b3e9db0a54e00de880b5e14ff1518dd8ba"

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
