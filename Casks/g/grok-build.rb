cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.72"
  sha256 arm:          "971c1e2e85b01199ca3ccbc02d6c995400e9b99989432e5a477d0d82cec9da01",
         intel:        "5733a8d7cc766cc72570163a72dcc8d7f17be12cdb0213b63f421d6ba8f3cfac",
         arm64_linux:  "3824e44e96d8c237803192d47765473e4d985ab682c814830701c24dfbce1693",
         x86_64_linux: "d7be6cf21ba1cc79ee4cb2d6dd2579a4bc65a01df17a26e008e63d55351fd948"

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
