cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.87"
  sha256 arm:          "e2f4aa32570f38077b305bdedd11a8a925ca1eb08996d77c2f066a29bea65f21",
         intel:        "efba26de1e1b256a71ad1010f0cd544cab666bd3a76dbbe6c0734c3a5b7056b0",
         arm64_linux:  "01b5d5da008fb151962fde362ddf3564471e64d2adc3c83b558972b73fd1d593",
         x86_64_linux: "44a8ed1673c842a45fd6a110fd7f5f92f78c08b2921b71b41941a48f153c9de3"

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
