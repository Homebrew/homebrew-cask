cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.90"
  sha256 arm:          "d9baf683fcc830bbf95bfa7a45be4515b98613ccf86ea13ee194f1d49b33da18",
         intel:        "b19fe6e5626b5191b6f3cbba6f14953af6161ec79447ba6670bfa36558ad476b",
         arm64_linux:  "860eeaccd067a18e60cf7585fdeb682035ff94c075283ad752ec4c3b836a5b27",
         x86_64_linux: "7ebcce0f8a76b826e34c76f214361916b130ca9cf1571adf267fbda38f92b4b6"

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
