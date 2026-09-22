cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.41"
  sha256 arm:          "9c844eb13365180787d9ad22b2b3748a024be8e1ed845253cc114781b31c591d",
         intel:        "8fce04ab8f33a0f604e405a64b3ec28cf92aa600ca6b80106e4b14e8bf80d95b",
         arm64_linux:  "7c0b8c973af6a78e2037f19ed93033471b8c5e722f9ff04b86b092e066e60d74",
         x86_64_linux: "9ce03ed23e16ea01072b4496263d6213a27899e1e3e107f008d36edf82e70407"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/build", browsed: "2026-08-13"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"
  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
