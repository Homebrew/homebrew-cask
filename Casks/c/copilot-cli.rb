cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.78"
  sha256 arm:          "87982a909d52fcf095ee4458d3b5a69bbfd8ae614177115191b977a93df3d807",
         intel:        "511777831011ff3c20becd66b996657ec6dc1b7e4faa6c30bd60cbac4078b7a1",
         arm64_linux:  "e7d8dd1829d8096ade9876977c49a574b1851c730c71b4f2f5039b4d6ed39ba4",
         x86_64_linux: "8935cbe2916b0b1cb724aaa81fdda29e2ec20b2ea76f1d2708fb788e47acfad9"

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

  zap trash: "~/.copilot"
end
