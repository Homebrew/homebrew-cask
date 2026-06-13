cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.62"
  sha256 arm:          "aad6e11cdc80cc8288bc10f81f6a8654847afc791174bfbd155ddfd2bbac8369",
         intel:        "a3b9efd603eb2457d0068a5036f65c15c83b4b01c64d0d433c6cf6d0ba97e2f1",
         arm64_linux:  "099ca091e3bfa510d0b22365c4da4d04ac14c9c691de2dd39b1075e2a8c48fca",
         x86_64_linux: "cbb4a400c86a187631ded6bf8177aadf9f2886fca5a9e27998449151a28cf3c8"

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

  zap trash: "~/.copilot"
end
