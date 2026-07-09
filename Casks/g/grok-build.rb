cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.93"
  sha256 arm:          "2a97ba675bd992aa9b981e2e83776460d94f469b510c0b8efe28b50d236d767c",
         intel:        "f310c94f795fb78398f7b338731174d14aba229a895895e5c87969afbf3fca95",
         arm64_linux:  "edae20e92a0a33fedec1aa3488f3e3808d8c4ca2128fc8f313fbd818e3e95f5f",
         x86_64_linux: "4e0738d3b5550f3c842bc0ae69f468815c6329c008a110d0c27a694dc3401135"

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
