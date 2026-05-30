cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.13"
  sha256 arm:          "0cc0aee2a1e33e9f817653be4f328cc52f1cf199c31238df4a5d6d6873e1b857",
         intel:        "0c8c2e85c398120ad94aa14fd25dc2145634dad0f0f2813a9949081978a0e747",
         arm64_linux:  "0b4707bf361fb15344d4ebb19daf8db5d8e79ab1a696f7b3a6bd649e70b8466b",
         x86_64_linux: "f82449fabe188d7fe4cd43e35fab3cd464684d8b1a34f6e3fa05fd414c430edc"

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
