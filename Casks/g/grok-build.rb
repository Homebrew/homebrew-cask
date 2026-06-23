cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.63"
  sha256 arm:          "1f039d94324802463dd4a16cbf064ffccf7df4f16708a8e50893afccfbc53e5c",
         intel:        "4455ed73c97b33a3003557c7ce9e53b719bec33e9da173a88135567f6367b816",
         arm64_linux:  "e5afd81333908fe9622e2a8258f7904ccc2774cbcb5c029911539265812fa7ac",
         x86_64_linux: "f39b7b4bdf7b29ceaca23a11790a04f2872be29cda5992594673ab63146c0dde"

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
