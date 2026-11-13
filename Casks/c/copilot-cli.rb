cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.110"
  sha256 arm:          "7c5265fd7ab45ea3c4a1aa586288b757281293612f346f8fa7fecc114153f001",
         intel:        "5623868de290e0ef72ca39ded59cb4737bae9f2311f6396169cbad7a563a7efa",
         arm64_linux:  "4edd232fa4597064c46f84a1e87d69dff94fa4618b49e50209ac697e1b7f6f41",
         x86_64_linux: "0c8eaeded78ecb87a403c3e447e4ce0fe9d6d90c13605872873dbe2f9c2f92c4"

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
