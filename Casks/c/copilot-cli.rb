cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.114"
  sha256 arm:          "35e8165a6ca811fb907b5afb7892e53d1bb85426bb77fe3f83b7f0b4e955249a",
         intel:        "9ac9f8785ad036c8d6a976a386fd05d721b510b57f083f1aac0cac9e378051bb",
         arm64_linux:  "a204154d4522a7c3aa73a65ba598e432f6aafe37d5fa31cf853163a27d98018e",
         x86_64_linux: "b91a96f2257297cfb67ed6784a2a658609a6b8c2ee2ded18af9c9abe8cc790ae"

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
