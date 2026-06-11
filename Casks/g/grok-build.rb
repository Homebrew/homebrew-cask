cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.50"
  sha256 arm:          "9bf60dcc7307b6b56b8771e3d19f9f440707910f04c6de1282374bd34ba4c28f",
         intel:        "c82951b5bdb0f3e90e590cf34e09a8cf00ebf6b37ebfb474eccece3a982218bf",
         arm64_linux:  "425ba367d187c575f07be56ebc752787276d36525600a05c8989085b9dc3c5ba",
         x86_64_linux: "1fab20a2e98703f1f6b8433ca827ef8ec4df1fc8f8aec6387f152fc3400bfd44"

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
