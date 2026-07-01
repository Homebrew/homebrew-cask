cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.81"
  sha256 arm:          "2bc9b8e5a15eeac6475f779263f14595590c8e523a611700a9eaa56406e546b4",
         intel:        "4da76724d03944cb3f74a738a50869dfa785e6166b52f85a288803daaaeab649",
         arm64_linux:  "a252d36b6a891184f60707e99246c19c9d34b3b8c30b6126bbd1f78a740b3740",
         x86_64_linux: "8c76802cf17c2aed23252a599f8d81178c30ffddeabfef3be50abee3d52b5672"

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
