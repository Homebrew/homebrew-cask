cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.73"
  sha256 arm:          "9fe27fcf27655dc5882d69a303f6187a759a9c249f6c7175ebd87deb3a0d1617",
         intel:        "351c7d378f42cd4f908cfe6f43b6d66a424c3e87a4b21a25bbf6d1fbf2541fda",
         arm64_linux:  "69bdd31e69b5687f5512747058ea51d9dce824841b8c97acd07d9fc016fa82b3",
         x86_64_linux: "ea005f398317140f0acfba5f787c751993671f80c055dcabade15f1dfa761b1d"

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
