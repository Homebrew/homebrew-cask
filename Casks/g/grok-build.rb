cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.103"
  sha256 arm:          "1be9de92f31566f2d38992125f902220b022f4f1e3fb7330532a0513d1d6f0f2",
         intel:        "8969211f16948f0de3780360b72ab0d5f3fd08cecaf6c93bcc82692f7c59d1d8",
         arm64_linux:  "3e5e6f7f90cb8c3f3338bb2abbf638838af0e42620f0f88d3b36a38e09189aba",
         x86_64_linux: "9a597598dd798333f75d2b577960eaa80a479dea6ae891045fe2b03e10b179b2"

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
