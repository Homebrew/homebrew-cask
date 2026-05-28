cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.8"
  sha256 arm:          "7ac186bb07a31f2bbc23ac80cef9d23e4d171ff68ce75e35fcf0ca2dc573966c",
         intel:        "1da7b9e21f2e0c7e85d88cc8d6dcb985cfb3001e577abc2a3655f51655f105c6",
         arm64_linux:  "eb3479a9ffd7183145e984fe5edd6a180e5b4cbb0edf0559daeb2f80c1b1410d",
         x86_64_linux: "62be0ccc1369da1ea1c727a8b67b4dade29b2fee87ea8375d4663cfe118cc987"

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
