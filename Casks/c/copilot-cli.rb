cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.100"
  sha256 arm:          "4af0815e798158641bdd8e76e622fee0975e24ef91c5f0daf9ada4d9e0eac5a0",
         intel:        "dedf0a0b57ef845067d28195ac1ba9668269de45d521a72bb81f74a3f13a5a7b",
         arm64_linux:  "e7eee160da29e47fe471997f43366cc0606e3a8a1ae97ac74df612f1894dde6a",
         x86_64_linux: "65dfb019192afebed7abb385323a232a5ac32fa8c40a230880d4013cffb6b0b3"

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
