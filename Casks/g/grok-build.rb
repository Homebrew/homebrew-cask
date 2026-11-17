cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.88"
  sha256 arm:          "b0185133b3362c406069653e40c9864876342fd6d667555e0438f7f26a1f785e",
         intel:        "4ec4d61a50d1aff49139bc0c84878d0b37e9b62949eb45c561fd57ed52305739",
         arm64_linux:  "55f285af4b68fe53cc2f45b00a4392c8c4871509671e0185e0237804194ccf29",
         x86_64_linux: "a33013fe73ea63d2f18df636f90f84060a88712f9932b77cda0447dd83b4bfe5"

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
