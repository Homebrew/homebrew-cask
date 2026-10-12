cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.95"
  sha256 arm:          "de8fe8f8451247f03e0d5dfd0e0f8bafb1b38649e33e79997dc1ee76ec66df8f",
         intel:        "4fbe697463e028bf9927722a0bdc26dee4494ce60ce3a83bdb8689313566794b",
         arm64_linux:  "4cae94d3abd15699d6a479103a9a39fb3c1dcd85a6ce191882f1902340f10f44",
         x86_64_linux: "c91a8874f3b2bdc905c2452f9d9fc923013924feb431e256eb769ff792719d7f"

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
