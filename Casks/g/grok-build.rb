cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.101"
  sha256 arm:          "8431538dbd99379240f558b48b779c651d668b06d793c87311ad532c4395a4e2",
         intel:        "884aa9e2520d85359027bd75710238165100c88d879046e34931aa703866421d",
         arm64_linux:  "4c2d6e7b310d50dda9f1bb0143f069950dbab68021c38e9022aefb732abd3319",
         x86_64_linux: "2556299cded37f81e54c02420cfa7f1a2df9feab72a445869a0f5596e143b333"

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
