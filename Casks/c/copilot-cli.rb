cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.367-0"
  sha256 arm:          "e0edaa2f247f25dad8e672a2ed74912d79a35b323248899158cc579055b30524",
         intel:        "f0d025c30ef267afe9d34df1bc9d7339134ab9422654d67b0b0ccbb37ba0920e",
         arm64_linux:  "df75c3db23810ff097b58ef7769861cb11e653a17c2c52a63cdd168b618c011e",
         x86_64_linux: "5ec8b59016889247a8dda2fa55d467596749887895434ff5659297c74a699597"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
