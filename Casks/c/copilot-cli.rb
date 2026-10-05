cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.92"
  sha256 arm:          "6aa2af1d0436b23c92810f11ea35a3d1c2b36b716d3e6d7c44299d199f905c5b",
         intel:        "7527cdd1c254d1daeb3e3fbd042deec3ba1f283cce86c83dced2bea8b63cc28b",
         arm64_linux:  "634d5200d96c17f01357637a166bb303744e8ca965550d6bbcb72b52b5e3c6a4",
         x86_64_linux: "1d8daedb9cdb200061471cabe9f924f80293689cb9c42489344864c044f33ea9"

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
