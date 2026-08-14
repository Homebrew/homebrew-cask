cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.4"
  sha256 arm:          "39366f7756a090b735cc1df8c93a8c0c3c7871555cf6cbb28f9351ca82936485",
         intel:        "990bc39a82de9bcfcbab77786c85794c61302f3b253994b58f65f418201a04b5",
         arm64_linux:  "08af52499f7b4a4a094c65ec960be9f862e2528a1b208e5141deb98c1d85388f",
         x86_64_linux: "79f49625f153923db491a5c290e9b04c3444da488b6b9d6aac533ccb5bff2455"

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
