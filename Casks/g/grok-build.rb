cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.38"
  sha256 arm:          "98117d3963d4e0d9e3253e8b45be900c02f44414e894f2647528fe412cb42c52",
         intel:        "577c9c7629ebced78179fe56a6f3bb1ea72ea943ab6280187cee78c834e526fb",
         arm64_linux:  "4777e72fa7ca9e5180f5c3883d025fc7dd5c0a765706f5eeef69245511d69839",
         x86_64_linux: "674b475e23e117fef48e742144d54512276df02e491619a9d7c90221b7aee053"

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
