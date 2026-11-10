cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.109"
  sha256 arm:          "9c21ad663ce98f500c1f0b62e0a6d687bc1b1661e59f4c2161cc114515a01942",
         intel:        "ce73d75d599718a7ade68a3b78d2ba84cc1c2a77e01cc4483b03579ff592199d",
         arm64_linux:  "679db06c3168457d8154cd8ce93b822f7c46d3169e61da4c0b78ac6e110c4af6",
         x86_64_linux: "45a7f37e822e8c8725eda6b27deaed55dad2688ff4163ed27ec22e23293cb761"

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
