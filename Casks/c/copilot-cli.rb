cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79"
  sha256 arm:          "706ff7b43c62e667ec0f9b613d3ccdd62c690c89697467d33ef36615a7e8481d",
         intel:        "7c7b51bad2ab4fd14a0c04ef93b10d0bfcf54cc3d847c9d8c9d66c36a20e3554",
         arm64_linux:  "c2181e3a597c7c9593b2a6d5d4e2e58b4e6a5ded12def8b74510869d3a3a977b",
         x86_64_linux: "9248d81ead3055c51e90067ae7adf0cfb84b2f8b456d8580f18705ae181ca624"

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
