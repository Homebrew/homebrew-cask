cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.91"
  sha256 arm:          "b29e3a9e4176f2e6417504916714328d030f04ac934ff1a2a6ddcad9235c847b",
         intel:        "ff6217eb716be23ad70cc4d39b4191325568e757645036e07ad32f67aef72a4c",
         arm64_linux:  "26a42491bec497a921f198d550a614e0a8989f1c2418f5bb1dd2150f09e6eac0",
         x86_64_linux: "0e7a0e85290228afecce4d4eed42fda80c0f5b9c86f433deb246cde1d5eec8e5"

  on_macos do
    depends_on macos: :ventura
  end

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
