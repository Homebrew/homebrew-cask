cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.115"
  sha256 arm:          "f0858bbff5e35c4fe92d97a0061cb4a2a12b06defacf5512b77ca294175a12cf",
         intel:        "e6fb406eea63683563bb9420d4c1c6c09c53156ccd819b9c45560ddf014a7ee9",
         arm64_linux:  "889b423ce7e0dd41a298b95716d3d8fe80dc30f1fd9cf5419a95b6fb8d4e1bc8",
         x86_64_linux: "e01975bf3a73791b0c0adfdf0d7093b8616186db61b78b33604b124806808816"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
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
