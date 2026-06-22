cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.63"
  sha256 arm:          "84ef09fb2988eb2ea5360625226ec255f69d0ebf521b2029d6658f8d36b674cd",
         intel:        "ef627639ee04862d71e2065e3d2e1d668ef62a20c03ae190c715e31ca865a237",
         arm64_linux:  "fa3255439d7d63ae0e51ab614b0285606212b316790550351eae88a62f0bb20f",
         x86_64_linux: "64d4a80496248f316030c358f530e60b96bae670e18f0c3f62e1f91fefacaf82"

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
