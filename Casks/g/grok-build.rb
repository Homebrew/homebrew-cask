cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.77"
  sha256 arm:          "aae4920c3952c97e127190236427dddbd7678d85d09a53a81cfd708072e41fd9",
         intel:        "2626f903307671f3b0144d544f45cf2d4999ff4f1c5021cf22058f9081e86349",
         arm64_linux:  "4913c25b865ce27f5cbf65204a483c12b1e7445e3128e8cbdbcab272ae328437",
         x86_64_linux: "9a6733a16eef4692d830b146c9dec8042cdc124a97bc8cc0116972f7677e4670"

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
