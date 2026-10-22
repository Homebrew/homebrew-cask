cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.67"
  sha256 arm:          "036a47ce2987adae04de827f7803bf0cc460bf169b640db168f18ec7acb734db",
         intel:        "24a951871bfb7b3f6036fc1e1cd2442c664e2b2eeba58de9e8f47de4c633a03e",
         arm64_linux:  "089a0acc2c1b570efcd791c5cd0f8aa074f6e8ab82c00ab78af0b934acdb6386",
         x86_64_linux: "ce33b1a29e37901f56fe59916cda7a1149e6fd377118f918e90d89f9abb52a51"

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
