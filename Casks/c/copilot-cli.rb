cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.88"
  sha256 arm:          "55c3c6b581080cf613f0b25788d133dad4265bcb15cfb2e7acf80b2ff2ec5d67",
         intel:        "114856fa48b23897e8b56431f9b1e8af31e5f0f5c19d99b02feec29a1d5b0b9d",
         arm64_linux:  "e263f5f9eb0db5dddf5775ac98c437e27743857ce0ba310f08f2338aebd1107d",
         x86_64_linux: "42f40c08ff8a8ff78522161e4b5e2b86340ad8bb0853a5f1aa64ce65b48d007b"

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
