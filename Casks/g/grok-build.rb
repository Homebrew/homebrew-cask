cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.13"
  sha256 arm:          "8669e0fdadceec25b8c159c355f427ffbd82583525d774b6ab1522197ea83b80",
         intel:        "8eacec87f5ecdb9259c6d812d12ce9e2d405b1526e36ae9d7fc81ec31dbd74d6",
         arm64_linux:  "b926fc5308374396e260e7efbd6107231a8dae13c084ddaf0fe89b7ebb3edd25",
         x86_64_linux: "edf79521581bb5e6b95abef848491a6a742e860da3e237ebe86a280d30dce4c1"

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
