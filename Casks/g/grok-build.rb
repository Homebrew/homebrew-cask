cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.89"
  sha256 arm:          "f149e6ad81339491f8d6e0c5fd712f2813042c0dfbb595c28d5767e4567c17a1",
         intel:        "3103ba39e3bd7f9c6f55e1b4a61219e7d49736f334e97527a49f73aaf5743d8d",
         arm64_linux:  "641b3e500d6420d3b07117a2c857cceeb82b33f4b53d23a95895bd76a4773f96",
         x86_64_linux: "a3dface51d9bdc71fd121e0481dd02d9b46a721f7a6b892f756480e9666eba1f"

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
