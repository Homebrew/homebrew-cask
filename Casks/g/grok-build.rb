cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.1.220"
  sha256 arm:          "1320310df276ef7883675236b0d2600f957c929d3ab49674f1c019c5981a0a94",
         intel:        "3c0392e5f04152f220022c05ac24a9dbc0868604be6db83c42bb6ce304b7dc44",
         arm64_linux:  "3b15efc258f4219d01736acee70c575a8167f970cb4d497a3b0c218440db58ff",
         x86_64_linux: "98d331d64dfc4fb1dae862475218cccdd195f76839b8361a0678af2fd388364b"

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
