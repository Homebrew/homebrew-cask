cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.373"
  sha256 arm:          "a821b8947695cf06aa5820cf4bd0be9b19bf0938e2baee5bcb507fc58029d59b",
         intel:        "f087b359a03c00a2df6ba9f9025730d14ed717430589e1fe8b4c4bf9c824376c",
         arm64_linux:  "1cfab963ffdab1ef666c7543850fc2b479922dc4125395c910c2b475f4163035",
         x86_64_linux: "76f6bf05801d5c968a3c8694b7a205c149ae9bc6c2b81442f38a6cf4d3239cb2"

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
