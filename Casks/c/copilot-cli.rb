cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.96"
  sha256 arm:          "0964fd63cc55e2964deb3d0cb005cd5fa04f803120eb3104635bc4e1664968a4",
         intel:        "74711b000e941b7afcf109314e639150894ab4533d2d17833af9fb89ee850daf",
         arm64_linux:  "5073e1ee39fab0c724d10e6fc852977830b5196aa9b66cde934a65faa8010d6b",
         x86_64_linux: "66b60b58b14d72390f30d6d7f8480d18a0f05c111d132e4ff8f92ae637d413f8"

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
