cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.111"
  sha256 arm:          "e1fafdfffe14f339460befaf194360e8f90bfd02efe8a4f24cfa1c7aea657ffe",
         intel:        "d193a409b2db2e26dbf9e61ce9623e9fd8fdeb9acc7a73a1a02199c918d96ce7",
         arm64_linux:  "d2daad12b448a96cab461b8195b3b59b63c9f981e98a07414f12db4fcc278f10",
         x86_64_linux: "f158d0d43367c3959c5ad213327255ac5991a0ec4c67bb475e09cc8cdba4a7b3"

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
