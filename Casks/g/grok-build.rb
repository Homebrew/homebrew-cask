cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.60"
  sha256 arm:          "980fad1dcb3770101cf05ce1b53fceea2c4706a6957a4fb9000a1c053a1c0252",
         intel:        "642c115973c323c79c430b27efaa94755a2d847d0ccc23ed96d49183fef26f47",
         arm64_linux:  "665c286b66760eb1a5e7199f60fb8028a5a0d290cc8e9cdecba6c9b24af7b862",
         x86_64_linux: "10e6af64b24724fc1074c373e906b9ad121110044dddcbd97ad43c3a25f96d5f"

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
