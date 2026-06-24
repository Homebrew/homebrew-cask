cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.64"
  sha256 arm:          "1ea0f6ffbd2daf4d7d5b2bca880ecaacebc4bb58dbfea097b5b0861fa32037d9",
         intel:        "1fc8c16080df886c9a6ffe3d64534ba332c3837fd714a996e2cfceb919d2b288",
         arm64_linux:  "68f5cf337a4994ac4ff759b0e2c2923043c0584ad5fdf20411c05717b65eee25",
         x86_64_linux: "c72dc9e43c5021ed7bba0816051b55d0acb83e5a54a3c95732f9e38fdc8f53e6"

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
