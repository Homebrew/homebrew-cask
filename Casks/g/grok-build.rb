cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.33"
  sha256 arm:          "89f15e1887a936d961602263e24999b900ff9a36468e2cf32924128ce4b52e80",
         intel:        "5332d01d9d945e58c6dab7e61b15cf0348cb907a2e9e0fd49d506d96f5775318",
         arm64_linux:  "0ac97fdb445d479fec907d9976fd057ae07053bc07757491675882a74941f3c0",
         x86_64_linux: "0c077b02ce6a46a6649bc1bb792bdad3969cc1b2fa6730a64cf9baee8a642843"

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
