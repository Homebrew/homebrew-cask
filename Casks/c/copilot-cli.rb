cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.22"
  sha256 arm:          "b88b94526c3159ef72b7fe0487d8763975706f9f907d67967b45ef5d5201a6ee",
         intel:        "73512a5bd53578dd5cafa761f77d70d0835d920f30db0516fd4bb3f3994dd977",
         arm64_linux:  "f310821662a189c37baba64c09cfc06aba41c4adf289a7dbe6d9dcc9f25f8dd2",
         x86_64_linux: "da1e34b105ed1cfa5fb52cf431083df0f556d3bf0f2ccc8f999fb0c003314081"

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
