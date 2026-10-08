cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.50"
  sha256 arm:          "af41b1d65d4116ff649a689ad9d070d4c2abe255737d46ba0b3e8161345696e6",
         intel:        "5ff2b912da2d85cdc627595d819423751bab67fcb65870f90a0783cccba5c62a",
         arm64_linux:  "947eea63e52393e00778d651d22e0dad22d30e9ee5b2af7944efc3fd4438ecc0",
         x86_64_linux: "c80de0155706ff2d995623887b102f2d0abd2c62b2643dea3a0cebaf7dd724d5"

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
