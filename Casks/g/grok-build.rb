cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.60"
  sha256 arm:          "19f72b9f59e1294a89bd45f55103cd5172c329864c3978e9fe7bbe6216361cc6",
         intel:        "2659145c120698c52e78e6969b5297f141a01811b1ae0b6840aec0278bc89bed",
         arm64_linux:  "7c4e80f6a0b2067426a2a85f0ffe0913a77cf9807ea9743c5f60831bdffdf45e",
         x86_64_linux: "b89acd01d3d849df9f7634385ca202abe5f1082dd57661dfa0cf204c19cbded3"

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
