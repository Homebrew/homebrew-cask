cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.108"
  sha256 arm:          "567198e7cd947f5b05bef7f036116e6286ddcd8286ec45830082b28c664dbfb0",
         intel:        "0a9f5afdd059fc7bcab6ef91abf41605979821e02b735f3439115cf34f7c96df",
         arm64_linux:  "b0c78c49543bb8a1163e812dcd0601a5ff1ffc067889add6351b0568d76772e6",
         x86_64_linux: "4c14e320c5cd10234ad56cba855509206e4518e1c04a780ac05a8e1c124bd97d"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
