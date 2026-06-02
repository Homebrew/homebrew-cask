cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.58"
  sha256 arm:          "8fe2a018a4f7b4162f9f9af535c288ce2d41ddbe144a3f5cb05e36a40082e0c2",
         intel:        "2a59516efc40553bfa255972cef68335e2cc05497708efe56f24d1f1b08678a7",
         arm64_linux:  "d0789188c32d8daeef6703083377136b22c7a33a6d03386f55ae9f2b7aff1d9f",
         x86_64_linux: "666e9b60f610e41ab4c77b4d6989bfe7e5f5a9669764e5934ba645700d4d258e"

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
