cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.22"
  sha256 arm:          "409ff474504ea5c5030fc05621902fc9d07b1b7965899f09d9a66b1947cc3e13",
         intel:        "12a7d7824d1c4d98628b9a6a122a0fbc4b4990054fd82e88a3daea999a08d476",
         arm64_linux:  "5d89f9e8432384b595de28d5a239f4dc21423a5ed95caa60ec0e514d86eb1e8a",
         x86_64_linux: "cfe17d7cc7a155bf684cc6329e7bb6db17ac72182e6651bee0eccf25b62c783f"

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
