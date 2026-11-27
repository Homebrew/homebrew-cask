cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.117"
  sha256 arm:          "081e8b48ef046c7a1d1c1f3178fa0260998c2848fa720b600a27f24840e4f8bc",
         intel:        "fc3827dfc74229c6045e12cca2f517db0b1ab11d05c3a9c7d5195a3c39fa67c8",
         arm64_linux:  "24591c89a6a155f26e97bd081ea20f55c12e8a423eaad01386e7c49a80990846",
         x86_64_linux: "d12052d8cb42c0ee4345fb625d3d65dfc6e19f65277e2a4827ee10723adce8aa"

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
