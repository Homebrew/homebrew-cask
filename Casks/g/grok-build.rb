cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.16"
  sha256 arm:          "3046acf7c3605b9a107e07beb29718583fe9e0255ae23d4ae45902694e75a8b0",
         intel:        "e0194200d575081e05c8524fd1b0ad1c532026ea42b4d5b6ca2fb07ef28a6075",
         arm64_linux:  "b65da332209446cc3ca4515aefdbbd18350d25b9b43d5bc94236a8b5f75121be",
         x86_64_linux: "d2449ca620ade1b8bf00effd50a7ff5a27e6b320f0777b1d1cf80525c0c0e742"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/cli"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"

  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
